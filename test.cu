
__global__ void cuda_Euler(const float * __restrict__ real, float *imag, float *output, const float ANGLE, const int LENGTH)
{
  int tid = blockDim.x * blockIdx.x + threadIdx.x,
  offset  = gridDim.x * blockDim.x;

  while(tid < LENGTH) {
    output[tid] = real[tid] * cosf(ANGLE) + imag[tid] * sinf(ANGLE);    
    tid += offset;
  }
}
