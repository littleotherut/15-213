/* 
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 */ 
#include <stdio.h>
#include "cachelab.h"

int is_transpose(int M, int N, int A[N][M], int B[M][N]);

/* 
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded. 
 */
char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N]) {
    int blockSize = 8, tmp;
    for(int i = 0; i < N; i += blockSize){
        for(int j = 0 ; j < M ; j += blockSize){
            if (M ==32){
                for (int k = i ; k < i + blockSize && k < N ; ++ k){
                    for(int l = j ; l < j + blockSize && l < M ; ++ l){
                        if (k != l){
                            B[l][k] = A[k][l]; 
                        }                   
                        else tmp = A[k][l];
                    }
                    if(i == j) B[k][k]=tmp;
                }
            }
            else if(M==64){
                int miniBlock = 4;
                int t1,t2,t3,t4;
                for(int k = i; k < i + miniBlock ; ++ k){
                    for(int l = j ; l < j + miniBlock ; ++ l){
                        if( k != l){
                            B[l][k] = A[k][l];
                        }
                        else tmp = A[k][l];
                    }
                    if(i==j) B[k][k]=tmp;
                }
                for(int k = i; k < i + miniBlock ; ++ k){
                    t1 = A[k][j+miniBlock];
                    t2 = A[k][j+miniBlock+1];
                    t3 = A[k][j+miniBlock+2];
                    t4 = A[k][j+miniBlock+3];
                    B[j+miniBlock][k] = t1;
                    B[j+miniBlock+1][k] = t2;
                    B[j+miniBlock+2][k] = t3;
                    B[j+miniBlock+3][k] = t4;
                }
                for(int k = i + miniBlock; k < i + 2*miniBlock ; ++ k){
                    t1 = A[k][j];
                    t2 = A[k][j+1];
                    t3 = A[k][j+2];
                    t4 = A[k][j+3];
                    B[j][k] = t1;
                    B[j+1][k] = t2;
                    B[j+2][k] = t3;
                    B[j+3][k] = t4;
                }
                for(int k = i + miniBlock; k < i + 2*miniBlock ; ++ k){
                    for(int l = j + miniBlock; l < j + 2*miniBlock ; ++ l){
                        if( k != l){
                            B[l][k] = A[k][l];
                        }
                        else tmp = A[k][l];
                    }
                    if(i==j) B[k][k]=tmp;
                }
            }
        }
    }
}
/*
当循环进行到 l == k 时：

读 A[k][k]：读入 tmp。不触碰 B。Row_A_k 保留在缓存中。
进入下一次迭代 l = k + 1：
读 A[k][k+1]：命中！(Saved A Miss)。
循环结束：
写 B[k][k] = tmp：此时这一行的 A 已经读完了。加载 Row_B_k，驱逐 Row_A_k。
关键点：Row_B_k 现在留在了缓存中。
在下一行循环（Row k+1）时：
当需要写入 B[k][k+1] 时，Row_B_k 还在缓存中。
命中！ (Saved B reload)。
总结：优化后，对于每一行k，我们要么避免了 A 的重载，要么保留了 B 供下次使用。
(与使用8个寄存器效果相仿)
*/

/* 
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started. 
 */ 

/* 
 * trans - A simple baseline transpose function, not optimized for the cache.
 */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, tmp;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }    

}

/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions()
{
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc); 

    /* Register any additional transpose functions */
    // registerTransFunction(trans, trans_desc); 

}

/* 
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; ++j) {
            if (A[i][j] != B[j][i]) {
                return 0;
            }
        }
    }
    return 1;
}

