#include <stdio.h>
void tmp(char *s){
    char *t = s;
    printf("%s",t);
}
int main(){
    char s[12] = "59b997fa";
    tmp(s);
}