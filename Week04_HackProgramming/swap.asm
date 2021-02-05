// This program flips the value in R0 and R1 by storing the temporary value in R2

// @0
// D=M
// @2
// M=D

// @1
// D=M
// @0
// M=D

// @2
// D=M
// @1
// M=D

// In the above code instead of R2 we could have chosen any register and as long as we dont care about what register we need, we can just use a variable which is like a request to the machine to use any register and store the value and whenever I call for the temp, kindly return me the value in the register you chose.

@0
D=M
@temp
M=D

@1
D=M
@0
M=D

@temp
D=M
@1
M=D

// Upon loading the above program into the CPU emulator we find that the temp value has been stored in the register 16.

