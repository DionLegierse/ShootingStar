import sys
from PIL import Image

filename = "SpaceShip 1.png"
file = Image.open(filename)

size = w, h = file.size

datalist = list(file.getdata())

print(datalist[0][0])

print(sys.version)
print()

