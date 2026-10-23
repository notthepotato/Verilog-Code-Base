# big2little.s
# converts the 8 words at 0x300 - 0x31c from big endian to little endian
# for each word, byte 0 swaps with byte 3 and byte 1 swaps with byte 2

# first put some test words in memory (lui + addi like in the handout)
	lui t0, 0x12345			# t0 = 0x12345000
	addi t0, t0, 0x678		# t0 = 0x12345678
	sw t0, 0x300(zero)		# word 0 at 0x300
	lui t0, 0x11223			# t0 = 0x11223000
	addi t0, t0, 0x344		# t0 = 0x11223344
	sw t0, 0x304(zero)		# word 1 at 0x304
	lui t0, 0x55667			# t0 = 0x55667000
	addi t0, t0, 0x788		# t0 = 0x55667788
	sw t0, 0x308(zero)		# word 2 at 0x308
	lui t0, 0x01020			# t0 = 0x01020000
	addi t0, t0, 0x304		# t0 = 0x01020304
	sw t0, 0x30c(zero)		# word 3 at 0x30c
	lui t0, 0xAABBC			# t0 = 0xAABBC000
	addi t0, t0, 0x123		# t0 = 0xAABBC123
	sw t0, 0x310(zero)		# word 4 at 0x310
	lui t0, 0xABCDE			# t0 = 0xABCDE000
	addi t0, t0, 0x456		# t0 = 0xABCDE456
	sw t0, 0x314(zero)		# word 5 at 0x314
	lui t0, 0x13579			# t0 = 0x13579000
	addi t0, t0, 0x246		# t0 = 0x13579246
	sw t0, 0x318(zero)		# word 6 at 0x318
	lui t0, 0x2468A			# t0 = 0x2468A000
	addi t0, t0, 0x135		# t0 = 0x2468A135
	sw t0, 0x31c(zero)		# word 7 at 0x31c

# now flip the bytes in each word
	addi t0, zero, 0x300	# t0 = address of the word we are on
	addi t1, zero, 8		# t1 = how many words are left

loop:
	lb t2, 0(t0)			# t2 = byte at address + 0
	lb t3, 1(t0)			# t3 = byte at address + 1
	lb t4, 2(t0)			# t4 = byte at address + 2
	lb t5, 3(t0)			# t5 = byte at address + 3
	sb t5, 0(t0)			# put byte 3 at address + 0
	sb t4, 1(t0)			# put byte 2 at address + 1
	sb t3, 2(t0)			# put byte 1 at address + 2
	sb t2, 3(t0)			# put byte 0 at address + 3
	addi t0, t0, 4			# go to the next word (4 bytes later)
	addi t1, t1, -1			# one less word left
	bne t1, zero, loop		# keep going until all 8 words are done
