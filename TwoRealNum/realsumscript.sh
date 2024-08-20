gfortran -c -fPIC realsum.f90
gfortran -c -fPIC sumwrap.f90
ar -rcs libreal.a realsum.o sumwrap.o
python realbuild.py
python realpfile.py