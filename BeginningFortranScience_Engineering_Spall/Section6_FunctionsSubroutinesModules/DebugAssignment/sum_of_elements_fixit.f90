
!  PROGRAM TO SUM VALUES IN AN ARRAY
PROGRAM SUMMATION
IMPLICIT NONE
INTEGER, PARAMETER :: n=10
REAL, DIMENSION(n) :: values
values=(1,2,3,4,5,6,7,8,9,10)

CALL integrate(n, values, sum)
PRINT* ' The sum of the elements is: ',sum

END PROGRAM SUMMATION

SUBROUTINE integrate(n, numbers, sum)
IMPLICIT NONE
REAL, INTENT(IN) :: numbers(n)
REAL, INTENT(IN) :: sum
INTEGER, INTENT(IN) :: n
INTEGER :: i
DO i=1,n
    sum=sum+numbers(i)
END DO
RETURN
END
