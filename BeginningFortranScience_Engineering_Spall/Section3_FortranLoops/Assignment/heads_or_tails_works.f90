!     model a coin toss
!     compiled with gfortran heads_or_tails.f90

      IMPLICIT NONE
      REAL :: x
      INTEGER :: i, ntoss, heads, tails

      WRITE(*,*)'Enter number of coin tosses'
      READ(*,*)ntoss

!     initialize the results to zero
      heads=0;   tails=0

      DO i=1,ntoss
      CALL RANDOM_NUMBER(x)
       if(x .gt. 0.5)tails=tails+1
       if(x .lt. 0.5)heads=heads+1
      END DO
      PRINT*,'Number of heads = ',heads,'  % heads = ',100.0*real(heads)/(heads+tails)
      PRINT*,'Number of tails = ',tails,'  % tails = ',100.0*real(tails)/(heads+tails)

      END