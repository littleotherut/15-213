#include <stdio.h>

int func_4(int x1, int x2, int x3){
    printf("%d %d %d\n",x1,x2,x3);
    int rax = x3 - x2;
    int tmp = rax;
    tmp >>= 31; // 符号位
    rax += tmp;
    rax >>= 1;
    tmp = rax + x2;
    printf("%d %d %d %d %d\n",x1,x2,x3,rax,tmp);
    if (tmp <= x1){
        rax = 0;
        if(tmp >= x1){
            return rax;
        } 
        else{
            x2 = tmp +1;
            rax = func_4(x1,x2,x3);
            rax = 2*rax +1;
        }
    }else{
        x3 = tmp -1;
        rax = func_4(x1,x2,x3);
        rax *=2;
    }
    return rax;
}
int main(){
    int x1,x2;
    scanf("%d %d",&x1,&x2);
    int ans =func_4(x1,0,14);
    printf("%d",ans);
    return 0;
}
