! Illustrate the use of NULLIFY statement and the 
! ASSOCIATED function.

! ASSOCIATED returns a True value if the pointer is associated
! with the particular target included in the function, and returns
! False if it is not associated with any target.


PROGRAM test_ptr3
    IMPLICIT NONE
    REAL,POINTER :: p1 => null(), p2 => null(), p3 => null()
    REAL,TARGET  :: a = 11., b = 12.5, c = 3.141592
    WRITE(*,*) ASSOCIATED(p1)
    p1 => a
    p2 => b 
    p3 => c
    WRITE(*,*) ASSOCIATED(p1)
    WRITE(*,*) ASSOCIATED(p1,b)
 END PROGRAM test_ptr3 


