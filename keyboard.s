.text
#Author: Alex Boldt
#type in something into the keyboard and then run the clock, text should be consumed and printed out on the TTY.
addi $r2, $r0, 1  #initializing #r2 to 128 and the bottom of the heap into #r3
sll $r2, $r2, 7   # $r2 now contains 128
addi $r3, $r0, 5
sll $r3, $r3, 6
sll $r3, $r3, 6 #$r3 is now 101000000000000 = 0x5000
addi $r4, $r3, 0
readLoop:
input $r1   #r1 will contain the most recent char read in
sw $r1, 0($r3)
addi $r3, $r3, 1
blt $r1, $r2, readLoop   #if r1 is less that 128, i.e. a valid char was read in, then loop
printLoop:               #again because there may be more chars to read
lw $r1, 0($r4)
output $r1               #output the string saved to memory during reading
addi $r4, $r4, 1
beq $r1, $r0, notloop
j printLoop
notloop:
halt
