#include "kv_store.h"
//#include "kv_intf.h"
//#include "iostream"
// std::shared_ptr<KVIntf> GetKVIntf() {
//     return nullptr;
// }

bool KVStore::Init(const char* dir,int id){
	data_->Init(dir);
	meta_->Init(dir);
	return true;
}

void KVStore::Close(){

}

int KVStore::Set(KVString &key, KVString &val){
	uint64_t pos = data_->Append(key,val);
	int ret = 0;
	meta_->Set(key,pos);
	//std::cout << "hope"<<std::endl;
	return (pos>>32);
}

int KVStore::Get(KVString &key, KVString &val){
	uint64_t pos = meta_->Get(key);
	data_->Get(pos,key,val);
	return (pos>>32);
}


