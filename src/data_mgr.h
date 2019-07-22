//
// Created by mike on 19-7-20.
//

#pragma once
#include "cstdint"
#include "map"
//#include "spp.h"
#include "memory"

#include "kv_string.h"
#include "file_io.h"
//using spp::sparse_hash_map;

class DataMgr{
    const static int MAX_FILE_SIZE = (1<<(10*2+8));//default size: 256MB per file
public:
    int Init(const char* dir, int file_size=MAX_FILE_SIZE);
    void Clear();
    uint64_t Append(KVString &key, KVString &val);
    int Get(uint64_t pos, KVString &key, KVString &val);

protected:
    int ScanDir(const char* dir);
    void Release();
    KVString No2FileName(int no, const char* ext);
    void NewFile();

private:
    int cur_file_no_ = 0;
    int cur_file_size_ = 0;
    std::map<int, std::unique_ptr<FileIo>> files_info_;
    //sparse_hash_map<int,std::unique_ptr<FileIo>> files_info_;
    KVString dir_;
    static int kMaxFileSize;
};

