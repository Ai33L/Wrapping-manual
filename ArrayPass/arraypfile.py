import arraymodule
from cffi import FFI
import numpy as np

ffi = FFI()
newmat = np.random.rand(2, 5)
print(newmat)
newmat_c = ffi.cast("double**", newmat.ctypes.data)
arraymodule.lib.arraywrap(newmat_c)