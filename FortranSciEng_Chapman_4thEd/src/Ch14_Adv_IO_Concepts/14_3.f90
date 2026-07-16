PROGRAM write_namelist
!   Purpose:
!       To illustrate a NAMELIST directed WRITE statement
!
    IMPLICIT NONE 

! Data Dictionary 
INTEGER :: i = 1, j = 2 
REAL :: a = -999., b = 0.
CHARACTER(len=12) :: string = 'Test string.' 
NAMELIST / mylist / i, j, string, a, b 

OPEN (8,FILE='output.nml', DELIM='APOSTROPHE')
WRITE (UNIT=8, NML=mylist)
CLOSE (8)

END PROGRAM write_namelist 

