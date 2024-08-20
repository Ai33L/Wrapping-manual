import os
from cffi import FFI
from os.path import abspath

real_library_path = abspath('./libstat.a')

desired_compiler = 'gcc'

ffi = FFI()
ffi.cdef("void wrapping();", override = True)

ffi.set_source("hellomodule",''' #include "hello.h" ''', library_dirs=[os.getcwd()], include_dirs=[os.getcwd()], libraries=['hellostat'], extra_link_args=['-lgfortran',])

ffi.compile(verbose = True)