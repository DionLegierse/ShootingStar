import math as math

file = open("MIXER_TEST_SCRIPT.tcl", "w", encoding="ascii")
file.write("restart\n")
file.write("add_force clk 0 0 1 5 -repeat_every 10\n")
file.write("add_force square1 00000000\n");
file.write("add_force square2 00000000\n");
file.write("add_force triangle 00000000\n");
file.write("add_force noise 00000000\n");
file.write("run 1\n\n");

for x in range(0,8000):

    if (math.sin(x/50) > 0):
        file.write("add_force square1 11111111\n")
    else:
        file.write("add_force square1 00000000\n")

    if (math.sin(x/125) > 0):
        file.write("add_force square2 11111111\n")
    else:
        file.write("add_force square2 00000000\n")

    file.write("run 10\n")
