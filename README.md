# Wrapping manual

Instruction to wrap existing FORTRAN code to work on Python, with examples of implementation.

Example implementations - 

* HelloWorld - Print 'Hello world'
* ArrayPass - Print an array passed from Python
* TwoRealNum - Compute sum of two real numbers.

Steps to implement a wrap (See the TwoRealNum example)-

* Start with the FORTRAN file containing the module and subroutines of interest (see realsum.f90).
* Create a wrap of the subroutine at the FORTRAN level (see sumwrap.f90). Use the bind(c) and the iso_c_binding options. The bind(c) option sets the function to be a C-function, which can be called from Python. The iso_c_binding ensures that data types are properly handled.
* Create a library of the subroutine of interest and its FORTRAN wrap. In the example, we use the following command to create a library called libreal.a.

      ar -rcs libreal.a realsum.o sumwrap.o
* On the Python end, we use the C Foreign Function Interface (cffi) package to port the C function (see realbuild.py). Using the libreal.a library, this file creates a Python package called numsummodule, which can be called from Python. Note that the build also requires a header file (see realsumwarp.h), with the function name and variables listed.
* This package can be called from Python (see realpfile.py) to compute the sum of two real numbers.

The script realsumscript.sh perform the entire build and performs a test call of the function from Python. 

### Credits
Giridharan Sankar



