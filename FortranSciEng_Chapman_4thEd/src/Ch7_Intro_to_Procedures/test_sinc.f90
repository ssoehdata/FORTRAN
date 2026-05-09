! Example 7-17 
! Driver program to test the sinc(x) Function [ ex 7_16]

PROGRAM test_sinc
!
! Purpose: 
!   To test the sinc function sin(x)
! 
IMPLICIT NONE 

! Data dictionary: declare function types
REAL :: sinc             ! sinc function
! Data dictionary: declare variable types & definitions 
REAL :: x               ! Input value to evaluate 

WRITE(*,*) 'Enter x: ' 
READ (*,*) x 

WRITE (*, '(A,F8.5)' ) 'sinc(x) = ', sinc(x) 

END PROGRAM test_sinc 

! ***************************************************
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
