! This module implements a merge subroutine

module merge_module 
    implicit none 
    
CONTAINS 
SUBROUTINE merge(b1, size1, b2, size2, out, size_out)
!
! Subroutine to merge two sorted arrays together
! in increasing order.
!
IMPLICIT NONE 

INTEGER :: size1
REAL,DIMENSION(size1) :: b1     ! Input array b1
INTEGER :: size2
REAL,DIMENSION(size1) :: b2     ! Input array b2
INTEGER :: size_out
REAL,DIMENSION(size_out) :: out 

INTEGER :: i1
INTEGER :: i2
INTEGER :: iout 

! Initialize pointers
i1 = 1
i2 = 1
iout = 1

! Perform the merge, putting the smaller value
! from eihter input into the outout array at
! each step. 

DO
    IF ( iout > size_out ) THEN
        EXIT 
    ELSE IF (i1 > size1 ) THEN 
        ! If b1 is finished, use b2
        out(iout) = b2(i2)
        iout = iout + 1
        i2 = i2 + 1
    ELSE IF (i2 > size2 ) THEN 
      ! If b2 is finished use b1
      out(iout) = b2(i1)
      iout = iout + 1
      i1 = i1 + 1
    ELSE IF  (b1(i1) <= b2(i2) ) THEN 
        ! If b1 is smaller, use it 
        out(iout) = b1(i1)
        iout = iout + 1
        i1 = i1 + 1
    ELSE IF ( b1(i1) > b2(i2) ) THEN 
        ! If b2 is smaller, use it 
        out(iout) = b2(i2) 
        iout = iout + 1
        i2 = i2 + 1
    END IF 

END DO 

END SUBROUTINE merge

END MODULE merge_module 

