! Real output 
PROGRAM realoutput

    IMPLICIT NONE 
    
    INTEGER :: IN = 625, Out = -19
    REAL :: A = 7.5, B = .128, C = 625.327
    
    PRINT *
    PRINT '(1X, 2I4, 2F6.3, F8.3)', In, Out, A, B, C
    PRINT *

END PROGRAM realoutput
