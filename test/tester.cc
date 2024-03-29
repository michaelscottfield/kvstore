
#include <unistd.h>
#include <sys/stat.h>
#include <dirent.h>

#include <iostream>

#include "easylogging++.h"
#include "simple_case.h"

using namespace std;

INITIALIZE_EASYLOGGINGPP

static const int kTimes = 1000000;

const char *exe_name(const char *name)
{
    int pos = 0;
    if (name == nullptr || (pos = strlen(name)) < 1)
    {
        return nullptr;
    }

    for (; pos > 0; pos--)
    {
        if (name[pos - 1] == '/')
        {
            break;
        }
    }

    return name + pos;
}

void help(const char *name)
{
    cout << "usage: " << name << " kv_num(million) so_path" << endl;
    cout << "   eg: " << name << " 1 ./libkv_store.so" << endl;
    exit(-1);
}

void remove_files(const char *dir)
{
    struct stat st;
    if (stat(dir, &st) == -1 || !S_ISDIR(st.st_mode))
    {
        LOG(INFO) << "make dir: " << dir;
        mkdir(dir, 0755);
        return;
    }

    DIR *dp;
    struct dirent *item;
    dp = opendir(dir);
    if (!dp)
    {
        perror("Open data directory failed!");
        return;
    }

    char path[NAME_MAX];
    int pos = strlen(dir);
    strncpy(path, dir, pos);
    if (dir[pos - 1] != '/')
    {
        pos++;
        strcat(path, "/");
    }

    while ((item = readdir(dp)) != NULL)
    {
        if ((0 == strcmp(".", item->d_name)) || (0 == strcmp("..", item->d_name)))
        {
            continue;
        }
        if ((item->d_type & DT_DIR) == DT_DIR)
        {
            continue;
        }
        strncpy(path + pos, item->d_name, NAME_MAX - pos);
        unlink(path);
    }
    closedir(dp);
}

void init_log(const char *name)
{
    el::Configurations conf;
    conf.setToDefault();
    char log_path[NAME_MAX] = "logs/";
    strcat(log_path, name);
    strcat(log_path, ".log");
    conf.set(el::Level::Global, el::ConfigurationType::Filename, log_path);

    el::Loggers::reconfigureAllLoggers(conf);
}

int main(int argc, char *argv[])
{
    START_EASYLOGGINGPP(argc, argv);
    const char *name = exe_name(argv[0]);
    init_log(name);

    if (argc != 3)
    {
        help(name);
    }

    int kv_num = atoi(argv[1]);

    if (kv_num < 0 || kv_num > 64 || argv[2] == nullptr || strlen(argv[2]) < 4)
    {
        help(argv[0]);
    }

    LOG(INFO) << "Begin test with key size: 8, val size: 4096";
    LOG(INFO) << "  >> KV number : " << kv_num << " M /thread";
    LOG(INFO) << "  >> KVStor    : " << argv[2];

    const char *dir = "./data";
    remove_files(dir);

    SimpleCase tester;
    tester.Init(argv[2]);

    int error = 0;
    double time = tester.Run(dir, kv_num * kTimes, error);
    LOG(INFO) << "time: " << time << " seconds, error number: " << error;

    tester.Uninit();
    return time * 100;
}
