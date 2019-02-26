import sys
from array import *
from PIL import Image

bites = array('B')


def write_to_bin(filename):
    print(filename)
    file = Image.open(filename + ".png")

    datalist = list(file.getdata())

    for n in range(0, 64):
        bites.append(datalist[n])


write_to_bin("SpaceShip 1")
write_to_bin("SpaceShip 2")
write_to_bin("SpaceShip 3")
write_to_bin("SpaceShip 4")

with open("spriteData.bin", 'wb') as f:
    f.write(bites)

print(sys.version)
print()

