      PROGRAM H 
      REAL x, inc 
      INTEGER n, i 
      PRINT *, 'Table of square root values' 
      PRINT '(a\)', 'Enter a positive starting value:' 
      READ *, x
      PRINT '(a\)', 'Enter a positive increment:'      
      READ *, inc
      PRINT '(a\)', 'Enter the number of values required:' 
      READ *, n 
      IF(x.LT.0.0 .OR. inc.LT.0.0 .OR. n.LT.1) THEN 
        STOP 'Error:Invalid data'
      ENDIF
      PRINT *, '   x     sqrt(x)' 
      DO 1 i=1, n 
        PRINT '(2f8.4)', x, SQRT(x)
        X=x+inc
  1   CONTINUE
      END
      
       