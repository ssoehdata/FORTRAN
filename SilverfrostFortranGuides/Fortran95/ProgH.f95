
! demostrates the iterative form of the DO construct 
PROGRAM H 
    IMPLICIT NONE 
    REAL x, inc 
    INTEGER n,i 
    PRINT *, "Table of square root values" 
    PRINT  "(a\)", "Enter a positive increment:" 
    READ *, inc 
    PRINT "(a\)", "Enter the number of values required:"
    READ *, n 
    IF(x<0.0 .OR. inc<0.0 .OR. n<1) THEN 
      STOP "Error: Invalid data" 
    ENDIF 
    PRINT *, "  x   sqrt(x)" 
    DO i=1, n
      PRINT "(2F8.4)", x, SQRT(x)  ! Edit descriptor 2F8.4 provides for 2 floating point values
      x=x+inc                      ! each with a field width of 8 and 4 decimal places.
    END DO 
  END PROGRAM H 
  