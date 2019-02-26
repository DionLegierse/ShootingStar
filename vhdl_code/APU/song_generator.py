cueFile = []
lines = []

wordsHeader = 6
wordsSquare1 = 0
wordsSquare2 = 0
wordsTriangle = 0
wordsNoise = 0

def setup_header():
    bpm_line = 750000000/int(lines[0])
    bpm_line ='{:08x}'.format(int(bpm_line))
    cueFile.append(";--CUE SETTINGS")
    cueFile.append("memory_initialization_radix=16;")
    cueFile.append("memory_initialization_vector=")
    cueFile.append(bpm_line[:4])
    cueFile.append(bpm_line[4:])

    for _x in range(0,4):
        cueFile.append("0000")

    cueFile.append("")
    del lines[0:1]

def create_square1():
    del lines[0]
    global wordsSquare1
    i = 0
    
    while lines[i] != "\n":
        wordsSquare1 = wordsSquare1 + lines[i].count(" ") + 1
        cueFile.append(lines[i].replace("\n",""))
        i = i + 1

    cueFile[5] = '{:04x}'.format(wordsHeader)

    square1_jump = (wordsHeader << 3) + 3

    cueFile.append('{:04x}'.format(square1_jump))
    wordsSquare1 = wordsSquare1 + 1
    cueFile.append("")

    del lines[0:i]

def create_square2():
    del lines[0]
    global wordsSquare2
    i = 0
    
    while lines[i] != "\n":
        wordsSquare2 = wordsSquare2 + lines[i].count(" ") + 1
        cueFile.append(lines[i].replace("\n",""))
        i = i + 1

    cueFile[6] = '{:04x}'.format(wordsHeader + wordsSquare1)

    square2_jump = ((wordsHeader + wordsSquare1) << 3) + 3

    cueFile.append('{:04x}'.format(square2_jump))
    wordsSquare2 = wordsSquare2 + 1
    cueFile.append("")

    del lines[0:i]

def create_triangle():
    del lines[0]
    global wordsTriangle
    i = 0
    
    while lines[i] != "\n":
        wordsTriangle = wordsTriangle + lines[i].count(" ") + 1
        cueFile.append(lines[i].replace("\n",""))
        i = i + 1

    cueFile[7] = '{:04x}'.format(wordsHeader + wordsSquare1 + wordsSquare2)

    triangle_jump = ((wordsHeader + wordsSquare1 + wordsSquare2) << 3) + 3

    cueFile.append('{:04x}'.format(triangle_jump))
    wordsTriangle = wordsTriangle + 1
    cueFile.append("")

    del lines[0:i]

def create_noise():
    del lines[0]
    global wordsNoise
    i = 0
    
    while lines[i] != "\n":
        wordsNoise = wordsNoise + lines[i].count(" ") + 1
        cueFile.append(lines[i].replace("\n",""))
        i = i + 1

    cueFile[8] = '{:04x}'.format(wordsHeader + wordsSquare1 + wordsSquare2 + wordsTriangle)

    noise_jump = ((wordsHeader + wordsSquare1 + wordsSquare2 + wordsTriangle) << 3) + 3

    cueFile.append('{:04x}'.format(noise_jump))
    wordsNoise = wordsNoise + 1
    cueFile.append("")

    del lines[0:i]

#get file name
inputFileName = input("what is the name of the song file? ")

#read file and save all lines in a variable
file = open(inputFileName + ".txt", "r")
lines = file.readlines()
file.close()

#convert first line to hexadecimal and save in hexlist
setup_header()
create_square1()
create_square2()
create_triangle()
create_noise()

#create cue file
cue_file = open(inputFileName + ".coe", "w")

for x in cueFile:
    cue_file.write(x + "\n")

cue_file.close()
