#include <stdio.h>

int main(){
    int rsp[6];
    int *r13 = rsp;
    int *r14 = rsp;
    int r12d = 0;
    while(1){
        int *rbp = r13;
        int rax = r13[0];
        if(rax - 1 > 5) return 1;
        r12d+=1;
        if(r12d == 6)break;
        int rbx = r12d;
        while(rbx <= 5){
            rax = rbx;
            rax = rsp[rax];
            if(rbp[0]==rax) return 1;
            rbx ++;
        }
        r13 ++;
    }
    for(int i = 0 ; i < 6 ; i ++){
        rsp[i] = 7-rsp[i];
    }
    int rsi = 0;
    while(1){
        int rcx = *(rsp + rsi);
        int rdx = 332;
        if(rcx > 1){
            int rax = 1;
            while(rcx == rax){
                rdx = rdx+1;
                rax ++;
                if(rcx == rax) break;
            }
        }
        *(rsp+2*rsi+32) = rdx; 
        rsi ++;
        if(rsi == 6) break;
    }
    int rbx = *(rsp + 32);
    int *rax = rsp+40, rsi = rsp+80;
    int *rcx = rbx;
    while(rax < rsi){
        int *rdx = &rax;
        *(rcx + 8) = rdx;
        if(rax == rsi)break;
        rcx = rdx;
    }
    *(rdx+8)=0;
    int rbp = 5,rax = *(rbx+8);
    rax = *rdx;
    if (*rbx >= rax);
    return 0;
}
/*
1. 判断所有元素不重复
2. 所有元素 = 7-x;
3. 
int rsp[6];
int *r13 = rsp;
int *r14 = rsp;
int r12d = 0; 
// 1. input : 0-5
// 2. input : 不重复  
while(1){
    int *rbp = r13;
    int rax = r13[0]-1;
    if(rax >= 5) bomb!;
    r12d+=1;
    if(r12d == 6) break;
    for(int rbx = r12d; rbx <= 5 ; rbx ++){
        rax = rsp[rbx];
        if(rax == rsp[0]) bomb!
    }
    r13++;
}
    for(int i = 0 ; i < 6 ; i ++){

    }
 r12d = 1 ; r12d < 6 ; r12d ++
rbx = i;
rax = rbx;
rax = a[r12d];// rax != rbp
rbx += 1;
rbx <= 5
*/