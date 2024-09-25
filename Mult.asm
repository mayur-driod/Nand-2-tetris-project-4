// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

//// Replace this comment with your code.
@sum
M = 0 //Sum initialised to value 0
@i
M=1 //i is initialised to 1
(LOOP)
@i
D=M // D is equal to i
@R0
D=D-M // D is now equal to i-R0
@END
D;JGT // if(i-R0)>0 goto end of program
@R1
D=M //D = R1
@sum
M=D+M // Sum = Sum+R1
@i
M=M+1 // i++
@LOOP
0;JMP // Goto LOOP
(END)
@sum
D=M
@R2
M=D
@22 //this is line number 22 and it's being addressed
0;JMP //This terminates the code by entering an infinte loop
// The last two lines are implemented to terminate the code and they are ment to run infinitly.