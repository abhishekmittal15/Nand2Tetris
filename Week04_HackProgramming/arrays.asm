// The concept of arrays is an abstraction, but in the machine level it is implemented using 

// There are 2 components that we would need, one is the base address and the size of the array.

// This below code will simply assign the 1st 10 numbers of an array to 96. Size of the array and the index of the array should also be assigned the relevant registers.

@96
D=A
@R0
M=D
// the above code decides which value needs to be assigned
@10
D=A
@size
M=D
@1  // setting the base address
D=A
@base 
M=D
@i 
M=D // setting the initial index to the same value as the base address.

(LOOP)
@base
D=A
@R0
D=M
@i
A=M // requesting the address of the element from the register i
M=D// After I am at the address of the element I set its value to the data register
@i
M=M+1 // incrementing the address stored in the index register to store the desired value in the next iteration 

// the below code is to check if the required number of elements have been initialized with the desired value.
D=M
@base
D=D-M
@size
D=D-M
@LOOP
D;JLT

(END)
@END
0;JMP
