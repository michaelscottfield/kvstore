#include "simple_case.h"

#include <dlfcn.h>
#include <chrono>
#include <pthread.h>
#include <concurrentqueue.h>
#include <easylogging++.h>

using namespace std::chrono;

bool SimpleCase::Init(const KVString &path) {
    auto entry = LoadSo(path.Buf(), entry_name_);
    if (entry == nullptr) {
        return false;
    }

    entry_ = reinterpret_cast<std::shared_ptr<KVIntf> (*)()>(entry);

    return true;
}

void SimpleCase::Uninit() {
    if (so_ != NULL) {
        dlclose(so_);
        so_ = NULL;
    }
}

void * SimpleCase::LoadSo(const char * path, const char * entry) {
    Uninit();

    void *dl = dlopen(path, RTLD_NOW | RTLD_DEEPBIND | RTLD_LOCAL);
    if (!dl) {
      LOG(ERROR) << "load " << path << " failed: " << dlerror();
      return nullptr;
    }

    so_ = dl;
    auto f_entry = dlsym(dl, entry);
    if (NULL == f_entry) {
      LOG(ERROR) << "find symbol " << entry << " failed: " << dlerror();
      return nullptr;
    }

    return f_entry;
}

double SimpleCase::Run(const char * dir, int times, int &err) {
    if (entry_ == nullptr) {
        LOG(ERROR) << "Entry function in user so is nullptr, call Init() first";
        return -1.0;
    }

    auto stor = entry_();
    if (stor == nullptr) {
        LOG(ERROR) << "Get kv_store shared_ptr failed, check \"GetKVIntf\" in user SO first";
        return -1.0;
    }

    stor->Init(dir, 0);

    double write_time = Write(stor, times, err);

    stor->Close();
    stor->Init(dir, 0);
    double read_time = Read(stor, times, err);
    stor->Close();
    return write_time + read_time;
}

//struct mypara{
//    std::shared_ptr<KVIntf> stor;
//    int times;
//    int & err;
//    double & write_time;
//};
//
double SimpleCase::RunPerf(const char * dir, int times, int &err, int threadCount) {
    if(entry_ == nullptr){
        LOG(ERROR) << "Entry function in user so is nullptr, call Init() first";
	return -1.0;
    }
    auto stor = entry_();
    if(stor == nullptr){
        LOG(ERROR) << "Get kv_store shared_ptr failed, check \"GetKVIntf\" in user SO first";
	return -1.0;
    }

    stor->Init(dir, 0);

    if(threadCount <= 1){ // consider it as single thread 
        double write_time = Write(stor, times, err);

	stor->Close();
	stor->Init(dir, 0);
	double read_time = Read(stor, times, err);
	stor->Close();
	return write_time + read_time;
    }

    pthread_t tids[threadCount];
    double write_times[threadCount];
    //mypara para[threadCount];
    //for(int i = 0; i < threadCount; ++i){
    //    para[i].stor = stor;
    //    para[i].times = times;
    //    para[i].err = err;
    //    para[i].write_time = write_times[i];
    //    int ret = pthread_create(&tids[i], NULL, &Writefn, &para[i]);
    //    //int ret = pthread_create(&tids[i], NULL, write(stor, times, err), NULL);
    //    if(ret != 0){
    //        LOG(ERROR) << "pthread_create error: error_code=" << ret <<endl;
    //    }
    //}
    //for(int i = 0; i < threadCount; i++) {
    //    pthread_join(tids[i], NULL);
    //}
    //pthread_exit(NULL);
}

static auto buildKey = [](int64_t idx)->KVString {
    return KVString((const char *)&idx, sizeof(idx));
};

static auto buildVal = [](int idx)->KVString {
    char buf[256];
    const char * prefix = "hello";
    snprintf(buf, sizeof(buf),"%s_%d", prefix, idx);
    return KVString(buf);
};

double SimpleCase::Write(std::shared_ptr<KVIntf> stor, int times, int & err) {
    if (stor == nullptr) {
        return -1.0;
    }
    auto begin = system_clock::now();
    /////////////////////////////////////////////////////////////////////////////
    for (int i = 0; i < times; i ++) {
        auto key = buildKey(i);
        auto val = buildVal(i);
        stor->Set(key, val);
    }

    KVString val;
    for (int i = 0; i < times; i ++) {
        auto key = buildKey(i);
        stor->Get(key, val);
        if (!(val == buildVal(i)) ) {
            err ++;
            //LOG(ERROR)<<"write error";
            LOG(ERROR) << "get key " << i << " error, val: " << val.Size();
            //LOG(ERROR) << key << "---"<<val;
            //LOG(ERROR)<<*key.Buf();
            //LOG(ERROR)<<key.Size();
            break;
        }
    }
    /////////////////////////////////////////////////////////////////////////////
    return duration_cast<duration<double>>(system_clock::now() - begin).count();
}

void* SimpleCase::Writefn(void *arg){
    mypara p = *(mypara*)arg;
    if(p.stor == nullptr){
	p.write_time = -1.0;
        return nullptr;
    }
    auto begin = system_clock::now();

    for (int i = 0; i < p.times; i ++) {
        auto key = buildKey(i);
	auto val = buildVal(i);
	p.stor->Set(key, val);
    }

    KVString val;
    for(int i = 0; i < times; i ++) {
        auto key = buildKey(i);
	p.stor->Get(key, val);
	if(!(val == buildVal(i)) ) {
	    err ++;
	    LOG(ERROR) << "get key " << i << " error, val: " << val.Size();
	    break;
	}
    }
    p.write_time = duration_cast<duration<double>>(system_clock::now() - begin).count();
    return nullptr;
}

double SimpleCase::Read(std::shared_ptr<KVIntf> stor, int times, int & err) {
    auto begin = std::chrono::system_clock::now();
    KVString val;
    for (int i = 0; i < times; i ++) {
        auto key = buildKey(i);
        stor->Get(key, val);
        if (!(val == buildVal(i)) ) {
            err ++;
            //LOG(ERROR)<<"read error";
            LOG(ERROR) << "get key " << i << " error, val: " << val.Size();
            break;
        }
    }

    return duration_cast<duration<double>>(system_clock::now() - begin).count();
}

