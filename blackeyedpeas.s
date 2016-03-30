.text
#prints "and the bass keeps runnin runnin and runnin runnin... forever"
ldia $r1, thebeat
ldia $r2, runnin
ldia $r4, runnin

printTheBeginning:
lw $r3, 0($r1)
output $r3
addi $r1, $r1, 1
beq $r3, $r0, notloop
j printTheBeginning
notloop:
printRunnin:
lw $r3, 0($r2)
output $r3
addi $r2, $r2, 1
beq $r3, $r0, notloop1
j printRunnin
notloop1:
addi $r2, $r4, 0
j printRunnin
halt

.data
thebeat: .asciiz "and the bass keeps "
runnin: .asciiz "runnin runnin and "