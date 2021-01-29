all:
	nvcc -ptx test.cu -gencode arch=compute_75,code=sm_75 -o test.ptx
	nvcc -ptx test.cu -gencode arch=compute_75,code=sm_75 --use_fast_math -o test-fast.ptx
