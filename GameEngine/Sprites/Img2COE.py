import sys
from PIL import Image


def Convert(ImageName):
    img = Image.open(ImageName)
    if img.mode != 'P':
        img = img.convert('P', palette=Image.WEB)
    width = img.size[0]
    height = img.size[1]
    filetype = ImageName[ImageName.find('.'):]
    filename = ImageName.replace(filetype, '.coe')
    imgDroeftoeter = open(filename, 'w')

    cnt = 0
    line_cnt = 0
    for r in range(0, height):
        for c in range(0, width):
            cnt += 1
            try:
                Outbyte = img.getpixel((c, r))
            except IndexError:
                sys.exit()

            try:
                imgDroeftoeter.write(str(Outbyte))
            except ValueError:
                sys.exit()

            imgDroeftoeter.write(' ')
        imgDroeftoeter.write('\n')
    imgDroeftoeter.close()
    print


if __name__ == '__main__':
    ImageName = input('Enter the name of your image: ')
    Convert(ImageName)
