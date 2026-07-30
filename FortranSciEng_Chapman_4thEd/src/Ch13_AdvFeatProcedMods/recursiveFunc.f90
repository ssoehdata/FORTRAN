! If a RESULT clause is included in a function, then the function
! name may not appear in a type declaration statement in the function. 
! The name of the dummy result variable is declared instead.

RECURSIVE FUNCTION fact(n) RESULT(answer) 

! Purpose:
!   To calculate the factorial function 
!           | n(n-1)!   n >= 1
!      n! = |
!           | 1         n  > 0 


    IMPLICIT NONE 

    INTEGER, INTENT(IN) :: n 
    INTEGER :: answer 

    IF ( n >= 1) THEN 
        answer = a * fact(n - 1) 
    ELSE 
        answer  = 1
    END IF 

    END FUNCTION fact 

