import numpy as np

def convert_floats(f):
    v = np.float64(f)
    w = np.float32(v)

    print('double : %.10f, float : %.10f' % (v, w))
    print('double : %.16f, float : %.16f' % (v, w))

convert_floats(-278.15)
convert_floats(2)
