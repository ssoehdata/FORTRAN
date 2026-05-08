! From 11.4.5 Exampe 
! COMPLEX Intrinsic Functions 

PROGRAM test_complex 
INTEGER, PARAMETER :: DBL = SELECTED_REAL_KIND(p=13)
COMPLEX(KIND=DBL) :: c1 = (0.,0. ) 
REAL(KIND=DBL) :: a1 = 3.333333333333333_DBL 
REAL(KIND=DBL) :: b1 = 6.666666666666666_DBL 
! c1 = CMPLX(a1,b1)    ! this will only give single precision
c1 = CMPLX(a1,b1,DBL)  ! this will provide the desired precision
WRITE(*,*) c1
END PROGRAM test_complex 

