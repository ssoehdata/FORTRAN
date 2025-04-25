! from lesson 11b statement functions
! older method

PROGRAM statementfunctions 
    IMPLICIT NONE 
    INTEGER :: a, b, c
    REAL :: AVGTHREE
    INTEGER :: x=10, y=2, z=3

    ! N.B.: if you divide the following by the integer 3 (vs the real 3.0)
    !       the output will only be 5 followed by trailing zeros in the decimal places  (5.000 etc)
    !       You need to also divide by the real to get the trailing decimal real values (5.666 etc)
    AVGTHREE(a, b, c) = (a+b+c)/3.0

    PRINT *, "PROGRAM STARTING"  

    z = AVGTHREE(x, y, z)
    ! print *, z
    PRINT *, "The average of 10, 2, and 3 is: ", AVGTHREE(x,y,z)

    PRINT *, "ENDING PROGRAM AND CLOSING"


END PROGRAM  statementfunctions