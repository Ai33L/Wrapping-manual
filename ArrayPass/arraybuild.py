import os
from cffi import FFI

desired_compiler = 'gcc'

ffi = FFI()
ffi.cdef("void arraywrap(double** Q);", override = True)

ffi.set_source("arraymodule",''' #include "arraywrap.h" ''',
               library_dirs=[os.getcwd()], include_dirs=[os.getcwd()],
               libraries=['array'], extra_link_args=['-lgfortran',])

ffi.compile(verbose = True)