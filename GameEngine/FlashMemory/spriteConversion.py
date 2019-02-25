import sys
from PIL import Image

filename = "SpaceShip " + str(1) + ".png"
print(filename)
file = Image.open(filename)

size = w, h = file.size

datalist = list(file.getdata())

print(datalist)
print(len(datalist))

output = [512]
start = 0
end = 8

for k in range(start, end):
    for n in range(k * 8, (k + 1) * 8):
        Red = bin(datalist[n][0])[2:4]
        Green = bin(datalist[n][1])[2:4]
        Blue = bin(datalist[n][2])[2:3]

        tRed = ''
        tGreen = ''
        tBlue = ''

        for _ in range(3 - len(Red)):
            tRed += "0"
        for _ in range(3 - len(Green)):
            tGreen += "0"
        for _ in range(2 - len(Blue)):
            tBlue += "0"

        tRed += str(Red)
        tGreen += str(Green)
        tBlue += str(Blue)

        print("R" + str(tRed) + " G" + str(tGreen) + " B" + str(tBlue))
    print()

for k in range(start, end):
    for i in range(0, 3):
        for n in range(k*8, (k+1)*8):
            # str3 = datalist[n][i]
            str1 = bin(datalist[n][i])[2:10]
            str2 = ''

            for x in range(8 - len(str1)):
                str2 += '0'

            str2 += str1
            print(str2, end=' ')
        print()
    print()


print(sys.version)
print()

