      PROGRAM I2
      REAL x, y
      INTEGER count 
      x=2.0 
      y=3.0 
      count = 0
      DO WHILE(abs(y-x).GT.1e-4)
        count=count+1
        x=y
        y=16.0/(x+1.0)
        PRINT '(a,i3,a,f6.4)', 'Iterations:', count,'Value:', y 
      END DO 
      END 

C Evaluates to 4 decimal places  a root of eqtn x^2 + x -16 by using x=16/(x+1) starting at x = 3 
C Prints each successive value, giving the abs value of the REAL variable x.
       
        