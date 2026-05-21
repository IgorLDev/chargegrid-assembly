.data
msg_start:      .string "ChargeGrid Controller iniciado\n"
msg_ok:         .string "Telemetry OK\n"
msg_shutdown:   .string "DESLIGANDO CARREGADOR\n"

current_val:    .word 50
voltage_val:    .word 160
temp_val:       .word 40

LIMIT_CURRENT:  .word 100
LIMIT_VOLTAGE:  .word 240
LIMIT_TEMP:     .word 60

.text
.globl main

main:
    la a0, msg_start
    li a7, 4
    ecall

loop:
    la t0, current_val
    lw t1, 0(t0)
    addi t1, t1, 1
    sw t1, 0(t0)

    la t0, voltage_val
    lw t2, 0(t0)
    addi t2, t2, 2
    sw t2, 0(t0)

    la t0, temp_val
    lw t3, 0(t0)
    addi t3, t3, 1
    sw t3, 0(t0)

    la t0, LIMIT_CURRENT
    lw t4, 0(t0)
    bgt t1, t4, shutdown

    la t0, LIMIT_VOLTAGE
    lw t4, 0(t0)
    bgt t2, t4, shutdown

    la t0, LIMIT_TEMP
    lw t4, 0(t0)
    bgt t3, t4, shutdown

    la a0, msg_ok
    li a7, 4
    ecall
    j delay

shutdown:
    la a0, msg_shutdown
    li a7, 4
    ecall

delay:
    li t5, 500000
delay_loop:
    addi t5, t5, -1
    bnez t5, delay_loop

    j loop
