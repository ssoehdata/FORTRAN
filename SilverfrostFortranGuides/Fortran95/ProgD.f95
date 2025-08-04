    PROGRAM D
    IMPLICIT NONE 

    INTEGER i, j 
    REAL x,y
    PRINT *
    PRINT "(a\)", "Enter an integer: " 
    READ *, i 
    j = 4*i+3 
    PRINT *
    PRINT "(a, i4)", "j=", j                            ! a is an edit descriptor that picks up the string in the 
                                                        ! list that follows. The i indicates an integer, the 4 indicates
                                                        ! that it should be placed in a field width of 4 characters
    PRINT * 
    PRINT "(a\)", "Enter a floating point number:"   
    READ *, x; y=4.0*(x+3.0)                            ! Use a semicolon ';' to put more than one instruction
                                                        ! on a  line.
    PRINT *
    PRINT "(a, f6.2)", "y=", y                          ! f6.2 designates a floating point number with a field width
                                                        ! of 6 characters with 2 digits after the decimal point
    
    END PROGRAM D 
