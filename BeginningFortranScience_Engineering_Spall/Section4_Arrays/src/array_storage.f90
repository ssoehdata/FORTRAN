

PROGRAM array_storage
IMPLICIT none
INTEGER :: a(3,3)

a(1,1)=1; a(1,2)=2; a(1,3)=3
a(2,1)=4; a(2,2)=5; a(2,3)=6
a(3,1)=7; a(3,2)=8; a(3,3)=9

PRINT*; PRINT*
PRINT*,a

END PROGRAM array_storage