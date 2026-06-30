
!Compute Temperature Distribution in L-shaped domain
!where the upper right quarter is outside the domain.
!Set the concave wall boundary conditions to 100.
!Set the remaining sides to 0.
!Using an iterative technique, solve using 2nd order
!central finite-difference approximations.
!Use a coarse mesh so we can print  solution to screen.

PROGRAM temp_in_L
IMPLICIT NONE
INTEGER, PARAMETER :: NX=7, NY=7
REAL, DIMENSION(0:NX+1,0:NY+1) :: t=0
INTEGER :: outeriterations, i, j

! set boundary conditions within L region
t(4,4:NY+1)=100
t(4:NX+1,4)=100
t(5:NX+1,5:NY+1)=-1   !set t0 -1 to distinguish in printout

DO outeriterations= 1,100
   DO I=1,NX
      DO J=1,NY
        IF(i >= 4 .AND. j>=4)CYCLE
        t(i,j)=0.25*(t(i+1,j)+t(i-1,j)+t(i,j+1)+t(i,j-1))
      END DO
   END DO
END DO

PRINT*; PRINT*
DO j=NY+1,0,-1
  WRITE(*,100)(t(i,j),i=0,NX+1)
END DO

100 FORMAT(9F6.0)
print *

END PROGRAM temp_in_L
