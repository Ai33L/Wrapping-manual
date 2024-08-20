gfortran -c -fPIC printarray.f90
gfortran -c -fPIC wraparray.f90
ar -rcs libarray.a printarray.o wraparray.o
python arraybuild.py
python arraypfile.py