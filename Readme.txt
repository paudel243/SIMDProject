The SIMD YMM kernel significantly was faster than the C Kernel by an average of (3.33/.40 = 1.332 times faster) on 2^20 vectors, 
(50.63/18.33 = 2.7621 times faster) on 2^24 vectors and (233.23/59.73=3.905 times faster) on 2^26 vectors. This is due to SIMD YMM commands
being able to process 4 elements at a time cutting down processing time on large datasets. Comparing it to the implementation of the X86 implementation 
it was still significantly faster by (1.07/.40 = 2.675 times faster) on 2^20 vectors, (20.57/18.33 = 1.122 times faster ) on 2^24 vectors and (70.23/59.73 = 1.176 times faster) on 2^26 vectors.
I was not able to test on higher vector sizes as it ends on errors due to the limitation of floating point representation even on doubles.