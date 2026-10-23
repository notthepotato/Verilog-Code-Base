# bubblesort.s
# bubble sort on sortarray (10 words starting at 0x400), smallest to largest
# t1 = i, t2 = swapped, t3 = 9, t4 = address of sortarray[i]
# t5 = sortarray[i], t6 = sortarray[i+1]

# put the starting values into sortarray
    addi t0, zero, 10       # t0 = 10
    sw t0, 0x400(zero)      # sortarray[0] = 10
    addi t0, zero, 7        # t0 = 7
    sw t0, 0x404(zero)      # sortarray[1] = 7
    addi t0, zero, 23       # t0 = 23
    sw t0, 0x408(zero)      # sortarray[2] = 23
    addi t0, zero, 1        # t0 = 1
    sw t0, 0x40c(zero)      # sortarray[3] = 1
    addi t0, zero, 15       # t0 = 15
    sw t0, 0x410(zero)      # sortarray[4] = 15
    addi t0, zero, 4        # t0 = 4
    sw t0, 0x414(zero)      # sortarray[5] = 4
    addi t0, zero, 42       # t0 = 42
    sw t0, 0x418(zero)      # sortarray[6] = 42
    addi t0, zero, 8        # t0 = 8
    sw t0, 0x41c(zero)      # sortarray[7] = 8
    addi t0, zero, 16       # t0 = 16
    sw t0, 0x420(zero)      # sortarray[8] = 16
    addi t0, zero, 2        # t0 = 2
    sw t0, 0x424(zero)      # sortarray[9] = 2

# bubble sort
    addi t3, zero, 9        # t3 = 9 (i goes from 0 to 8)
    addi t2, zero, 1        # swapped = 1 so the while loop runs at least once

while:
    beq t2, zero, done      # while (swapped == 1), if swapped = 0 we are done
    addi t2, zero, 0        # swapped = 0
    addi t1, zero, 0        # i = 0
    addi t4, zero, 0x400    # t4 = address of sortarray[0]

for:
    bge t1, t3, while       # if i >= 9 this pass is over, go back to the while
    lw t5, 0(t4)            # t5 = sortarray[i]
    lw t6, 4(t4)            # t6 = sortarray[i+1]
    blt t6, t5, swap        # if sortarray[i] > sortarray[i+1] swap them
    j next                  # otherwise dont swap

swap:
    sw t6, 0(t4)            # sortarray[i] = sortarray[i+1]
    sw t5, 4(t4)            # sortarray[i+1] = old sortarray[i]
    addi t2, zero, 1        # swapped = 1

next:
    addi t4, t4, 4          # move to the next element (4 bytes)
    addi t1, t1, 1          # i = i + 1
    j for                   # back to the top of the for loop

done: