#!/usr/bin/env python3
# 正弦数据生成器
from math import *
PRECISION = 64
def smooth(i):
    if i == PRECISION//2:
        return 1
    return 0
f = open('rom.mif','w')
f.write('WIDTH=8;\n')
f.write(f'DEPTH={PRECISION};\n')
f.write('ADDRESS_RADIX=UNS;\n')
f.write('DATA_RADIX=HEX;\n')
f.write('CONTENT BEGIN\n')
delta = pi/(PRECISION // 2)
for i in range(PRECISION):
    f.write(f'  {i} : {hex(int(127 * sin(pi/2 + i * delta)) + 128 - smooth(i))[2:].upper()};\n')
f.write('END\n')