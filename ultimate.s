.text
#will attempt to test as many instructions as possible
#r1 will be the string pointer always
#r2 will contain a char
ldia $r1, jalPass  #if printing works at all, that means jal, lw, beq, j, jr, and output are all correct
jal print

ldia $r1, lwPass
jal print

ldia $r1, beqPass
jal print

ldia $r1, jPass
jal print

ldia $r1, jrPass
jal print

ldia $r1, outputPass
jal print

addi $r3, $r0, 5   #addi
addi $r4, $r0, 4
addi $r4, $r4, 2
addi $r4, $r4, -1
beq $r3, $r4, beqPassFunc
ldia $r1, addiFail
jal print
halt
beqPassFunc:
ldia $r1, addiPass
jal print

add $r3, $r3, $r4   #add
addi $r4, $r4, 5
beq $r3, $r4, addPassFunc
ldia $r1, addFail
jal print
halt
addPassFunc:
ldia $r1, addPass
jal print

sub $r5, $r3, $r3   #sub
sub $r4, $r3, $r4
beq $r4, $r5, subPassFunc
ldia $r1, subFail
jal print
halt
subPassFunc:
ldia $r1, subPass
jal print

addi $r3, $r0, 1   #sll
sll $r3, $r3, 6
addi $r4, $r0, 31
addi $r4, $r4, 31
addi $r4, $r4, 2
beq $r3, $r4, sllPassFunc
ldia $r1, sllFail
jal print
halt
sllPassFunc:
ldia $r1, sllPass
jal print

sra $r3, $r3, 6   #sra
addi $r3, $r3, -1
beq $r3, $r0, sraPassFunc
ldia $r1, sraFail
jal print
halt
sraPassFunc:
ldia $r1, sraPass
jal print

addi $r3, $r0, 1    #and
sll $r3, $r3, 7
addi $r3, $r3, -1
addi $r4, $r0, 1
sll $r4, $r4, 6
addi $r4, $r4, 1
and $r4, $r4, $r3
addi $r5, $r0, 1
sll $r5, $r5, 6
addi $r5, $r5, 1
beq $r5, $r4, andPassFunc
ldia $r1, andFail
jal print
halt
andPassFunc:
ldia $r1, andPass
jal print

addi $r3, $r0, 1    #xor
sll $r3, $r3, 6
addi $r4, $r0, 24
xor $r5, $r3, $r4
addi $r4, $r0, 31
addi $r4, $r4, 31
addi $r4, $r4, 26
beq $r5, $r4, xorPassFunc
ldia $r1, xorFail
jal print
halt
xorPassFunc:
ldia $r1, xorPass
jal print

addi $r3, $r0, 5    #sw
sll $r3, $r3, 6
sll $r3, $r3, 6 #$r3 is now 101000000000000 = 0x5000 bottom of the heap
addi $r4, $r0, 1
sw $r4, 1($r3)
lw $r5, 1($r3)
beq $r5, $r4, swPassFunc
ldia $r1, swFail
jal print
halt
swPassFunc:
ldia $r1, swPass
jal print

addi $r3, $r0, -23    #blt
addi $r4, $r0, -24
blt $r4, $r3, bltPassFunc
ldia $r1, bltFail
jal print
halt
bltPassFunc:
ldia $r1, bltPass
jal print

ldia $r1, complete   #final confirmation
jal print

halt

print:
lw $r2, 0($r1)
output $r2
addi $r1, $r1, 1
beq $r0, $r2, done
j print
done:
addi $r2, $r0, 10  #newline
output $r2
jr $r7

.data
addPass: .asciiz "add: Pass :)"
addFail: .asciiz "add: Fail ;-;"
addiPass: .asciiz "addi: Pass :)"
addiFail: .asciiz "addi: Fail ;-;"
subPass: .asciiz "sub: Pass :)"
subFail: .asciiz "sub: Fail ;-;"
andPass: .asciiz "and: Pass :)"
andFail: .asciiz "and: Fail ;-;"
xorPass: .asciiz "xor: Pass :)"
xorFail: .asciiz "xor: Fail ;-;"
sllPass: .asciiz "sll: Pass :)"
sllFail: .asciiz "sll: Fail ;-;"
sraPass: .asciiz "sra: Pass :)"
sraFail: .asciiz "sra: Fail ;-;"
lwPass: .asciiz "lw: Pass :)"
swPass: .asciiz "sw: Pass :)"
swFail: .asciiz "sw: Fail ;-;"
beqPass: .asciiz "beq: Pass :)"
bltPass: .asciiz "blt: Pass :)"
bltFail: .asciiz "blt: Fail ;-;"
jPass: .asciiz "j: Pass :)"
jrPass: .asciiz "jr: Pass :)"
jalPass: .asciiz "jal: Pass :)"
outputPass: .asciiz "output: Pass :)"
complete: .asciiz "Congrats, you did it!"

