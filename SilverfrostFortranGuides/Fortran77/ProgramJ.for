      PROGRAM J 
      INTEGER n, input, mark(200),i,sum 
      n=0 
      input=0
      DO WHILE (input.NE.-1)
        PRINT '(a\)', 'Enter a mark(-1 to terminate):'
        READ *, input 
        IF(input.GE.0.AND.input.LE.100) THEN 
          n=n+1
          mark(n)=input 
        ELSEIF(input.NE.-1) THEN 
            PRINT *,'Error:Input out of range'
        ENDIF 
      END DO 
      IF(n.EQ.0) STOP 'Error:No data'
      sum=0
      DO 10 i=1, n 
        sum=sum+mark(i)
10    CONTINUE 
      PRINT '(a,F6.2)', 'The average value is ', FLOAT(sum)/n 
      END 
      
      