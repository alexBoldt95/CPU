Name: Alex Boldt
Hours spent: ~30
Consulted With: Felix Kung
Resources Used: Lecture Slides

Start the clock on low when running.

CORE is asbtracted to the main circuit and is separate from the keyboard, display, ROM and RAM. Please press the GLOBAL RESET button to reset, it will cycle 0->1->0. I think it is a pretty robust little computer. Have fun!

The control doc contains the control logic of the cpu.

Test Files:

ultimate.s prints out passing statements for all instructions except input.

keyboard.s tests input by using the keyboard. Type something into the keyboard, and then run the clock. The string will be consumed, saved to memory, and output on the TTY.

blackeyedpeas.s just prints out "and the bass keeps runnin runnin and runnin runnin..." forever.
