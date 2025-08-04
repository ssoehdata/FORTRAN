! This program shows how to put comments into a program
! It also includes the input of data and some simple calculations. 
PROGRAM C 
IMPLICIT NONE 
INTEGER i, j 
REAL x, y 
! Read an integer value 
PRINT *
PRINT *, "Enter an integer: " 
READ *, i 
j=4*i+3 
PRINT * 
PRINT *, "j=", j 
PRINT *  ! Now read in a floating point value 
PRINT *, "Enter a floating point number:" 
READ *, x 
y=4.0*(x+3.0) 
PRINT * 
PRINT *, "y=", y 
END PROGRAM C 
