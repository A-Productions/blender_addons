#!/bin/bash
cd "$(dirname -- "$(readlink -fn -- "${0}")")"

cython3 c_utils.pyx && gcc -I/usr/include/python3.5m -lpython3.5m c_utils.c -shared -fPIC -o c_utils.cpython-35m-x86_64-linux-gnu.so && rm c_utils.c
