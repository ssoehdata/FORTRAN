! Function sinc(x) 

FUNCTION sinc ( x )
!
! Purpose: 
!   To calculate the sinc function 
!       sinc(x) = sin(x) / x 
!
    IMPLICIT NONE 

    REAL, INTENT(IN) :: x       ! Value for which to evaluate sinc
    REAL :: sinc               ! Output value sinc(x) 

    REAL, PARAMETER :: EPSILON = 1.0E-30 ! The smallest value for
                                    ! which to calculate SIN(x)/x

    ! Check to see ABS(x) > EPSILON 
    IF (ABS(x) > EPSILON ) THEN 
        sinc = SIN(x) / x 
    ELSE  
        sinc = 1. 
    END IF 

END FUNCTION sinc 
