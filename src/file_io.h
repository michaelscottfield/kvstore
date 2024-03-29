//
// Created by mike on 19-7-19.
//

//#ifndef ENGINEKVSTORE_FILE_IO_H
//#define ENGINEKVSTORE_FILE_IO_H
#pragma once

/*
 * File size should be less than 4GB;
 */
#include "vector"
#include "stdio.h"

#include "kv_string.h"

class FileIo{
public:
    FileIo(const char * name);
    ~FileIo();
    int Append(const char* buf, int size);
    int Append(KVString &info);
    int Append(KVString &key, KVString &val);
    int Read(int offset, int size, KVString &out);
    int ReadKV(int offset, KVString &key, KVString &val);
    int Size();
    inline void Flush(){
        fflush(fh_);
    }
    //utils
    static bool Remove(const char* name);
    static int ScanDir(const char* dir, bool create_if_no_exist, std::vector<KVString> &files);
    static KVString Dir(const char* dir){
        KVString ret(dir);
        if(ret.Size() > 1 && *(ret.Buf() + ret.Size()-2) != '/'){
            ret = ret + "/";
        }
        return ret;
    }

private:
    FILE* fh_;
};

//#endif //ENGINEKVSTORE_FILE_IO_H
