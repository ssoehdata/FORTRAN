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
      PRINT "(2F8.4)", x, SQRT(x) 
      x=x+inc 
    END DO 
  END PROGRAM H 
  