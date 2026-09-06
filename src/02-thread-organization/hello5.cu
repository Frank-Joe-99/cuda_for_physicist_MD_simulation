#include <stdio.h>

__global__ void hello_from_gpu()
{
    const int b = blockIdx.x;
    const int tx = threadIdx.x;
    const int ty = threadIdx.y;
    printf("Hello World from block-%d and thread-(%d, %d)!\n", b, tx, ty);
}

int main(void)
{
    const dim3 block_size(2, 4);
    hello_from_gpu<<<1, block_size>>>();
    cudaDeviceSynchronize();



    cudaDeviceProp prop;
    cudaGetDeviceProperties(&prop,0);
    printf("Max threads per block: %d\n", prop.maxThreadsPerBlock);
 


    return 0;
}


