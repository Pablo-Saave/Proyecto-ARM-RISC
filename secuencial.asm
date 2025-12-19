.data
    array: .space 400 
.text
.globl main

main:
    la $t0, array       # Carga la dirección base del array en $t0
    li $t1, 0           # $t1 será nuestro contador (i)
    li $t2, 50          # $t2 es el límite del bucle (N = 50 iteraciones)

loop:
    beq $t1, $t2, exit  # Si i == 50, salir
    sw $t1, 0($t0)      # Guarda el valor de i en la dirección actual ($t0)
    addi $t0, $t0, 4    # Avanza exactamente 4 bytes (1 palabra). 
    addi $t1, $t1, 1    # Incrementa contador i
    j loop              # Vuelve al inicio del bucle

exit:
    li $v0, 10
    syscall
