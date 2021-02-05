// Branching is the concept of jumping based on the result of the evaluation of some boolean expression. Examples include if-else, for loop and while loops. But in this language there is only goto statement.

//    if R0>0 
//         R1=1
//    else 
//         R1=0

// the code below is very un readable and hence not a right way of writing program. the assembly language that allow us to use labels to refer the different parts of the program where we want the program counter to jump to
// @0
// D=M
// @8
// D;JGT
// @1
// M=0
// @10
// 0;JMP
// @1
// M=1
// @10
// 0;JMP

@0
D=M
@POSITIVE
D;JGT
@1 
M=0
@END
0;JMP
(POSITIVE)
@1
M=1
(END)
@END
0;JMP