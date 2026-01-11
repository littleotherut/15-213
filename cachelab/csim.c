#include "cachelab.h"
#include <getopt.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include <math.h>

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
    
    int **cache = (int **)malloc(S*sizeof(int *));
    for(int i = 0; i < S; i++){
        cache[i] = (int *)malloc(E*sizeof(int));
        memset(cache[i],0,E*sizeof(int));
    }
    bool *valid = (bool *)malloc(S*E*sizeof(bool));
    memset(valid,false,S*E*sizeof(bool));
    
    int hits_count = 0, misses_count = 0, evicts_count = 0;

    char *cmd = (char *)malloc(16*sizeof(char));
    while(fgets(cmd,16,file) != NULL){
        char opt = cmd[1];
        switch (opt)
        {
        case 'L':
        case 'S': {
            unsigned long addr;
            sscanf(cmd+3,"%lx",&addr);
            int set_index = (addr >> b) & ((1 << s) - 1);
            int tag = addr >> (s+b);
            bool hit = false;
            for(int i = 0 ; i < E ; ++ i){
                if (valid[set_index * E + i] && cache[set_index][i] == tag){
                    hits_count++;
                    hit = true;
                    break;
                }
            }
            if(!hit){
                misses_count ++;
                bool evicted = true;
                for(int i = 0 ; i < E ; ++ i){
                    if(!valid[set_index * E + i]){
                        cache[set_index][i] = tag;
                        valid[set_index * E + i] = true;
                        evicted = false;
                        break;
                    }
                }
                if(evicted){
                    evicts_count ++;
                    cache[set_index][0] = tag; // TODO : LRU policy
                }
            }
            break;
        }
        case 'M': {
            unsigned long addr;
            sscanf(cmd+3,"%lx",&addr);
            int set_index = (addr >> b) & ((1 << s) - 1);
            int tag = addr >> (s+b);
            // First access
            bool hit = false;
            for(int i = 0 ; i < E ; ++ i){
                if (valid[set_index * E + i] && cache[set_index][i] == tag){
                    hits_count++;
                    hit = true;
                    break;
                }
            }
            if(!hit){
                misses_count ++;
                bool evicted = true;
                for(int i = 0 ; i < E ; ++ i){
                    if(!valid[set_index * E + i]){
                        cache[set_index][i] = tag;
                        valid[set_index * E + i] = true;
                        evicted = false;
                        break;
                    }
                }
                if(evicted){
                    evicts_count ++;
                    cache[set_index][0] = tag; // TODO : LRU policy
                }
            }
            // Second access (always hit)
            hits_count++;
            break;
        }
        default:
            break;
        }
    }
    printSummary(hits_count, misses_count, evicts_count);
    return 0;
}
