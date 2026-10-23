addi a0, zero, 27             #input variable
addi s1, zero, 9              #value 9, used for evaluation
addi t0, zero, 0              #value 0, used for evaluation
addi t1, zero, 1              #value 1, used for evaluation

loop: blt a0, s1, done        #loop for subtracting 9 from a0, until a0 is less than 9
	  sub a0, a0, s1          #subtract 9 from a0
      j loop                  #loop
done: bne a0, t0, notzero     #if a0 is not 0, skip to not-zero block
	  addi a0, zero, 1        #since a0 is 0 (divis. by 9), set a0 = 1 
	  j restcode              #jump to rest of code
notzero: beq a0, t0, restcode #a0 not 0; when it is, jump to rest of code
      	 sub a0, a0, t1       #subtract 1 from a0 until it is now equal to 0
         j notzero            #loop
restcode: