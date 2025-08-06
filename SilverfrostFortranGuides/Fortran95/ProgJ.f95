PROGRAM J 
IMPLICIT NONE 
INTEGER n,input,mark(200),i,sum 
n=0; sum=0
DO
  PRINT "(a\)", "Enter a mark(-1 to terminate):" 
  READ *, input 
  IF(input==(-1)) EXIT 
  IF (input < 0 .OR. input >100) THEN 
    PRINT *, "Error: Input out of range" 
    CYCLE 
  ENDIF 
  n=n+1
  mark(n)=input 
  IF(n==200) EXIT 
END DO 
IF(n==0) STOP "Error:No data" 
DO i=1,n 
  sum=sum+mark(i)
END DO 
PRINT "(a,F6.2)","The average value is ", & 
    FLOAT(sum)/n 
END PROGRAM J 
