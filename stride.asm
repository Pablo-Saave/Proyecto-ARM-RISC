.data
    array: .space 20000 
.text
.globl main

main:
    la $t0, array       # Carga la dirección base
    li $t1, 0           # Contador (i)
    li $t2, 50          # Límite (N = 50 iteraciones)

loop:
    beq $t1, $t2, exit  # Si i == 50, salir
    sw $t1, 0($t0)      # Guarda el valor
    addi $t0, $t0, 400  # Avanza 400 bytes de golpe (equivale a 100 palabras).
    addi $t1, $t1, 1    # Incrementa contador i
    j loop              # Vuelve al inicio del bucle

exit:
    li $v0, 10
    syscall
