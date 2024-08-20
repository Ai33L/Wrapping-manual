import os
from cffi import FFI

desired_compiler = 'gcc'

ffi = FFI()
ffi.cdef("void sumwrapper(double x, double y);", override = True)

ffi.set_source("numsummodule",''' #include "realsumwrap.h" ''', library_dirs=[os.getcwd()], include_dirs=[os.getcwd()], libraries=['real'], extra_link_args=['-lgfortran',])

ffi.compile(verbose = True)