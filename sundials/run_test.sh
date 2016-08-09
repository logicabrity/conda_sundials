#!/bin/bash
gcc -I${PREFIX}/include -L${PREFIX}/lib64 -L${PREFIX}/lib -o cvKrylovDemo_ls cvKrylovDemo_ls.c -lm -lsundials_cvode -llapack -lblas -lsundials_nvecserial
LD_LIBRARY_PATH=$PREFIX/lib64:$LD_LIBRARY_PATH ./cvKrylovDemo_ls
