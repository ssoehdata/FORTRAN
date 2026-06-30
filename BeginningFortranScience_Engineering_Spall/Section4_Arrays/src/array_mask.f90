
!     EXAMPLE ARRAY MASK USEAGE
      IMPLICIT none


      INTEGER, PARAMETER :: nx=3, ny=3
      INTEGER :: i,j


      REAL, DIMENSION(NX,NY) :: a=0, b=0, c=0
      LOGICAL, DIMENSION(NX,NY) :: msk=.true.

     a(1,1)=1; a(1,2)=2; a(1,3)=3

      a(2,1)=4; a(2,2)=5; a(2,3)=6

      a(3,1)=7; a(3,2)=8; a(3,3)=9

!     identity matrix
      b(1,1)=1; b(1,2)=0; b(1,3)=0
      b(2,1)=0; b(2,2)=1; b(2,3)=0
      b(3,1)=0; b(3,2)=0; b(3,3)=1


      msk(1,1)=.true.; msk(1,2)=.true.; msk(1,3)=.true.

      msk(2,1)=.true.; msk(2,2)=.true.; msk(2,3)=.true.

      msk(3,1)=.true.; msk(3,2)=.true.; msk(3,3)=.false.
      PRINT*
      PRINT*,'Max Value:',MAXVAL(a, MASK = msk)

      PRINT*,'Max Value:',MAXVAL(a, MASK = a .lt. 5.)
      c=MATMUL(a,b)

      PRINT*
      do i=1,NX
      WRITE(*,'(4F10.1)')(c(i,j),j=1,NY)
      end do
100   FORMAT(4F10.1)


      END