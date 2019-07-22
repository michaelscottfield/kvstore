//
// Created by mike on 19-7-19.
//

#pragma once
#include "memory"
#include "map"
//#include "spp.h"

#include "kv_string.h"
#include "file_io.h"

//using spp::sparse_hash_map;

class MetaMgr{
public:
    bool Init(const char* dir);
    void Set(const KVString&key, uint64_t pos);
    uint64_t Get(const KVString &key);

protected:
    int RestoreMeta();
    static KVString GetPath(KVString &dir, const char*name){
        KVString path = dir;
        path = path+name;
        return path;
    }

private:
    std::map<KVString,uint64_t> keys_map_;
    //sparse_hash_map<KVString,uint64_t> keys_map_;
    std::unique_ptr<FileIo> key_fh_;
    KVString dir_;
};


