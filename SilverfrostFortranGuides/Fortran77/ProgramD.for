      PROGRAM D 
      INTEGER i,j 
      REAL x,y 
      PRINT * 
      PRINT '(a\)', 'Enter an integer:'
      READ *, i 
      j=4*i+3 
      PRINT * 
      PRINT '(a, i4)', 'j=', j 
      PRINT * 
      PRINT '(a, i4)' 'j=', j 
      PRINT * 
      READ *, x 
      y=4.0*(x+3.0) 
      PRINT * 
      PRINT '(a, f6.2)', 'y=', y 
      END 

C   Notes: The '*' in the Print statements (which stands for what is called 'listed directed'
C   output). The '(a\)' is a format specification. This edit descriptor example ('a'), picks up
C   a string in the list that follows.  The '\' backslash suppresses the carriage return. 

C   In line 11 the 'i4' following the 'a' descriptor, the 'i' stands for integer, and '4'
C   indicates that the result is to be placed in a field width of 4 characters.

C   In line 16 the 'f6.2', 'f' is for a REAL (floating point) number without an exponent 
C   and with a field width of 6 characters with 2 digits after the decimal point.  