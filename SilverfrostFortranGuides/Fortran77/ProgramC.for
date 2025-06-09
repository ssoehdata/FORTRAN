C  This program shows how to put comments into a program.
C  It also includes the input of data and some simple 
C  calculations. 
      PROGRAM C 
      INTEGER i,j 
      REAL   x,y 
C  Read in an integer value 
      PRINT *  ! produces ("prints") a blank line (a single line feed)
      PRINT *, 'Enter an integer:'
      READ *, i 
      j=4*i+3 
      PRINT * 
      PRINT *, 'j=', j 
C  Now read in a floating point value 
      PRINT * 
      PRINT *, 'Enter a floating point number:' 
      READ  *, x
      y=4.0*(x+3.0) 
      PRINT * 
      PRINT*, 'y=', y 
      END 
       

C  Notes: In standard Fortran, a variable that is not 
C  declared is assumed to be either INTEGER or REAL 
C  depending on the first letter in its name. This 
C  so-called "implicit" typing rule often causes 
C  problems particularly when a name is not spelled 
C  correctly.  