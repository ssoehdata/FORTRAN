PROGRAM K 
    IMPLICIT NONE 
    REAL mark(100), sum 
    INTEGER n,i 
    sum=0
    OPEN(UNIT=5,FILE="marks.dat")
    READ(5,*) n
    IF(n<=0) THEN 
      CLOSE(5) 
      STOP "Error: No data"
    ENDIF
    READ(5,*)(mark(i),i=1,n)
    CLOSE(5)
    PRINT *, n,"values read as follows:"
    PRINT "(8F8.0)", (mark(i),i=1,n)
    DO i=1,n
      sum=sum+mark(i)
    END DO
    PRINT "(a,F6.2)","The average value is ", sum/n
END PROGRAM K
