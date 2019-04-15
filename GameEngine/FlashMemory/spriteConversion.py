import sys

print("\n")
print(sys.version)
print("\n")

import os
from PIL import Image

IMG_WIDTH = 8
IMG_HEIGHT = 8
IMG_SIZE = 64

f = open("spriteData.coe", 'w')


def write_to_bin(filename):
    print(filename)
    file = Image.open(filename)
    datalist = list(file.getdata())

    r = bytearray(IMG_SIZE)
    g = bytearray(IMG_SIZE)
    b = bytearray(IMG_SIZE)
    byte = bytearray(IMG_SIZE)

    for n in range(0, IMG_SIZE):
        r[n] = datalist[n][0]
        g[n] = datalist[n][1]
        b[n] = datalist[n][2]
        byte[n] = 0

    for n in range(0, IMG_SIZE):
        r[n] = int(float(r[n]) / 255 * 7)
        g[n] = int(float(g[n]) / 255 * 7)
        b[n] = int(float(b[n]) / 255 * 3)

    for n in range(0, IMG_SIZE):
        byte[n] = byte[n] | (r[n] << 5)
        byte[n] = byte[n] | (g[n] << 2)
        byte[n] = byte[n] | (b[n])

    f.write("\n")
    for n in range(0, IMG_SIZE):
        if (n % 8 == 0 and n != 0):
            f.write("\n")
        f.write( "{:02X}".format(byte[n]) + " " )


count = 0

filelist=os.listdir('images')
for fichier in filelist[:]:
    if fichier.endswith(".png"):
        count = count + 1

f.write("; SpriteData\n")
f.write("; .COE file with hex coefficients\n")
f.write("; Height: " + str(8*count) + ", Width: " + str(IMG_WIDTH) + "\n")
f.write("\n")
f.write("memory_initialization_radix=" + "16" + ";\n")
f.write("memory_initialization_vector=\n")

filelist=os.listdir('images')

for fichier in filelist[:]: # filelist[:] makes a copy of filelist.
    if fichier.endswith(".png"):
        write_to_bin("images/" + fichier)
