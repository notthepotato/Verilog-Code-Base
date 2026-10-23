addi t0, zero, 5  # t0 = 5
addi t1, zero, 6  # t1 = 6
addi t2, zero, 7  # t2 = 7
addi t3, zero, 8  # t3 = 8
addi t4, zero, 9  # t4 = 9
addi t5, zero, 10 # t5 = 10
addi t6, zero, 11 # t6 = 11

add a0, t0, t1
add a0, a0, t2
add a0, a0, t3
add a0, a0, t4
add a0, a0, t5
add a0, a0, t6	# a0 = 45 + 11 = 56