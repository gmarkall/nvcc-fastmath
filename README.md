# NVCC Fastmath Example

Build with:

```
make
```

There are two outputs:

- `test.ptx`: built without the `--use_fast_math` flag, contains full-precision
  implementations of sin and cos.
- `test-fast.ptx`: built with the `--use_fast_math` flag, contains approximate
  sin and cos implementations:

```
	cos.approx.ftz.f32 	%f1, %f3;
	sin.approx.ftz.f32 	%f2, %f3;
```
