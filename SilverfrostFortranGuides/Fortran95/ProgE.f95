PROGRAM E 
IMPLICIT NONE 
INTEGER First, Second,Sum, TrueSum
PRINT *
PRINT "(a\)", "Enter the first number:"
READ *, First 
PRINT "(a\)", "Enter the second number:"
READ *, Second 
PRINT "(a\)", "Enter the sum of your two numbers:"
READ *, Sum 
TrueSum=First+Second
PRINT *
IF(Sum == TrueSum) THEN 
  PRINT*,"Your answer is correct"
ELSE 
  PRINT "(a, i4)", "No.Your answer should be:", &
       TrueSum
ENDIF

END PROGRAM E 
