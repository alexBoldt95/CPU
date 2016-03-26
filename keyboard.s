.text
addi $r2, $r0, 1
sll $r2, $r2, 7   # $r2 now contains 128
addi $r3, $r0, 5
sll $r3, $r3, 6
sll $r3, $r3, 6 #$r3 is now 101000000000000 = 0x5000
addi $r4, $r3, 0
readLoop:
input $r1
sw $r1, 0($r3)
addi $r3, $r3, 1
blt $r1, $r2, readLoop
printLoop:
lw $r1, 0($r4)
output $r1
addi $r4, $r4, 1
beq $r1, $r0, notloop
j printLoop
notloop:
halt
