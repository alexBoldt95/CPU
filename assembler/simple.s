.text
ldia $r1, hello
jal func

input $r5
ldia $r1, kappa
lw $r2, 0($r1)
sub $r3, $r2, $r5

and $r4, $r2, $r2
xor $r5, $r2, $r4
sll $r6, $r2, 2
sra $r6, $r2, 2
addi $r2, $r2, -2
sra $r2, $r2, 1
blt $r2, $r0, go
add $r2, $r2, $r0
go:
halt

func:
loop:
lw $r3, 0($r1)
output $r3
addi $r1, $r1, 1
beq $r3, $r0, notloop
j loop
notloop:
jr $r7

.data
hello: .asciiz "Hello!"
kappa: .word 1000
