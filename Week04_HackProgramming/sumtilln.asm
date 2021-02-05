// Loop from 1 to n and compute the final sum.R1's value will be the index. R2's value = N
// @1
// M=1
// @3
// D=A
// @2
// M=D
// @3
// M=0

// (LOOP)
// @1
// D=M
// @2
// D=D-M
// @END
// D;JGT

// @1
// D=M
// M=M+1
// @3
// M=M+D
// @LOOP
// 0;JMP

// (END)
// @END
// 0;JMP

// Understanding this program if you havent written yourself is a pain in the ass so we use variables to simplify it
// Here i is the index value which keeps incrementing, N is the final number we want to add. Sum stores the final answer.
@i
M=1
@5
D=A
@N
M=D
@3
M=0

(LOOP)
@i
D=M
@N
D=D-M
@END
D;JGT

@i
D=M
M=M+1   // index is incremented
@sum
M=M+D     // sum is increased by the index value 
@LOOP
0;JMP

(END)
@END
0;JMP