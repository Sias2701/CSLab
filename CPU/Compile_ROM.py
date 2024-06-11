# ROM 生成程序
import pandas as pd
from MIF_format import *
import numpy as np
INFILE = "CONTROL_ROM.xlsx"
OUTFILE = "ROM.mif"

ROM_FILE_HEADER = """
WIDTH=42;
DEPTH=256;
ADDRESS_RADIX=UNS;
DATA_RADIX=BIN;
CONTENT BEGIN
"""
# 	
# 
ROM_FILE_END = """
END;
"""

f = open(OUTFILE, "w")

sheet = pd.read_excel(INFILE, sheet_name='ROM_Program', skiprows=4, keep_default_na=False)

f.write(ROM_FILE_HEADER)

for i in range(256):
    line = sheet.loc[i][1:-8]
    res = ''
    print(line)
    for j in range(35):
        if j == 34:
            dat = 0
            if line[j] == '' : dat = 0
            else: dat = int(line[j])
            res += bin(int(dat))[2:].rjust(8, '0')
        else:
            dat = ''
            if line[j] == '' : dat = '0'
            else: dat = str(int(line[j]))
            res += dat
    print(len(res))
    f.write(f"  {i} : {res};\n")
f.write(ROM_FILE_END)
