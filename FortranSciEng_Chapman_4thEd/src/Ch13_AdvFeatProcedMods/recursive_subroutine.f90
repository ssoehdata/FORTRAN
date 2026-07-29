! Example 13_4 

! A subroutine is declared recursive by adding the keyword RECURSIVE
! to the subroutine statement.

RECURSIVE SUBROUTINE factorial (n, result) 

! Purpose: 
!   To calculate the factorial function
!               | n(n-1)!  n >= 1
!         n! =  | 
!               | 1        n = 0

IMPLICIT NONE 

INTEGER, INTENT(IN) :: n         ! Value to calculate
INTEGER, INTENT(OUT) :: result   ! Result

INTEGER :: temp 

IF (n >=1 ) THEN 
    CALL factorial ( n-1, temp ) 
    result = n * temp 
ELSE 
    result = 1
END IF 

END SUBROUTINE factorial 

