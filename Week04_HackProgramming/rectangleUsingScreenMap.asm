// This code is meant to display a rectangle at the top left of the screen with dimensions x pixels long and 16*y pixels wide, where x and y are whole numbers

@50
D=A
@X
M=D
@Y
M=1
@16384
D=A
@base
M=D

@i
M=0
(LOOP1)
@j
M=0

(LOOP2)
@base
D=M
@j // it is the address of the 16bit'th column of the row 
A=D+M
M=-1
@j
M=M+1

@Y
D=M
@j
D=D-M
@LOOP2
D;JGT

@32
D=A
@base
M=M+D // it is the starting address of the row.
@i
M=M+1 // it is the index of the row

@X
D=M
@i
D=D-M
@LOOP1
D;JGT