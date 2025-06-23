      PROGRAM I3
      REAL y 
      INTEGER i,n, sign
      y=1.0 
      sign=-1
      PRINT '(a\)', 'Input the value of n:'
      READ *, n 
      IF (n.LT.2) STOP 'Value out of range'
      DO 10 i=2,n
        y=y*(1.0+float(sign)/(i*i))
        PRINT '(a,i2,a,f6.4)','n=',i,'product=',y 
        sign=-sign 
 10   CONTINUE 
      END 
      
C reads in a value for a positive int n > 1 and then evaluates at (1-1/4)(1 + 1/9)...(1 + - 1/n^2) and displays it.
      
      