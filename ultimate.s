.text
#will attempt to test as many instructions as possible
#r1 will be the string pointer always
ldia $r1, jalPass
jal print
ldia $r1, beqPass
jal print
ldia $r1, jPass
jal print
print:
output $r1
addi $r1, $r1, 1
beq $r0, $r1, done
j print
done:
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
lwFail: .asciiz "lw: Fail ;-;"
swPass: .asciiz "sw: Pass :)"
swFail: .asciiz "sw: Fail ;-;"
beqPass: .asciiz "beq: Pass :)"
beqFail: .asciiz "beq: Fail ;-;"
bltPass: .asciiz "blt: Pass :)"
bltFail: .asciiz "blt: Fail ;-;"
jPass: .asciiz "j: Pass :)"
jFail: .asciiz "j: Fail ;-;"
jrPass: .asciiz "jr: Pass :)"
jrFail: .asciiz "jr: Fail ;-;"
jalPass: .asciiz "jal: Pass :)"
jalFail: .asciiz "jal: Fail ;-;"
inputPass: .asciiz "input: Pass :)"
inputFail: .asciiz "input: Fail ;-;"
outputPass: .asciiz "output: Pass :)"
outputFail: .asciiz "output: Fail ;-;"
