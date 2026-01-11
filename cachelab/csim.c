#include "cachelab.h"
#include <getopt.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include <math.h>
int hits_count = 0, misses_count = 0, evicts_count = 0;

typedef struct cacheLine_ {
    bool valid;
    unsigned long tag;
    int lruCount;
} cacheLine;

void cacheAccess(cacheLine **cache, int s, int E, int b, char *cmd){
    unsigned long addr;
    sscanf(cmd+3,"%lx",&addr);
    int set_index = (addr >> b) & ((1 << s) - 1);
    int tag = addr >> (s+b);
    bool hit = false;
    for(int i = 0 ; i < E ; ++ i){
        if (cache[set_index][i].valid && cache[set_index][i].tag == tag){
            cache[set_index][i].lruCount = 0; // Update LRU
            hits_count ++;
            hit = true;
            break;
        }
    }
    if(!hit){
        misses_count ++;
        bool evicted = true;
        for(int i = 0 ; i < E ; ++ i){
            if(!cache[set_index][i].valid){
                cache[set_index][i].tag = tag;
                cache[set_index][i].valid = true;
                cache[set_index][i].lruCount = 0; // Update LRU
                evicted = false;
                break;
            }
        }
        if(evicted){
            evicts_count ++;
            int lruIndex = 0;
            for(int i = 1 ; i < E ; ++ i){
                if(cache[set_index][i].lruCount > cache[set_index][lruIndex].lruCount){
                    lruIndex = i;
                }
            }
            cache[set_index][lruIndex].tag = tag;
            cache[set_index][lruIndex].lruCount = 0; // Update LRU
        }
    }
}

int main(int argc, char* argv[]) {
    int opt;
    int s, E, b;
    FILE *file = NULL;
    while((opt = getopt(argc,argv,"s:E:b:t:")) != -1){
        switch (opt){
            case 's': s = atoi(optarg); break;
            case 'E': E = atoi(optarg); break;
            case 'b': b = atoi(optarg); break;
            case 't': file = fopen(optarg,"r"); break;
            default: exit(0);
        }
    }
    int S = (int)pow(2,s);
    
    cacheLine **cache = (cacheLine **)malloc(S*sizeof(cacheLine *));
    for(int i = 0 ; i < S ; ++ i){
        cache[i] = (cacheLine *)malloc(E*sizeof(cacheLine));
        for(int j = 0 ; j < E ; ++ j){
            cache[i][j].valid = false;
            cache[i][j].tag = 0;
            cache[i][j].lruCount = 0;
        }
    }

    char *cmd = (char *)malloc(16*sizeof(char));
    while(fgets(cmd,16,file) != NULL){
        char opt = cmd[1];
        for(int i = 0 ; i < S ; ++ i){
            for(int j = 0 ; j < E ; ++ j){
                if(cache[i][j].valid){
                    cache[i][j].lruCount ++;
                }
            }
        }
        switch (opt) {
        case 'L':
        case 'S': 
            cacheAccess(cache, s, E, b, cmd);
            break;
        case 'M': {
            cacheAccess(cache, s, E, b, cmd);
            cacheAccess(cache, s, E, b, cmd);
            break;
        }
        default:
            break;
        }
    }
    printSummary(hits_count, misses_count, evicts_count);
    return 0;
}
