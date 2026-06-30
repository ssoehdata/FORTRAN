PROGRAM simple_print
IMPLICIT none
REAL :: a, b, c

a=1.; b=2.; c=3.

PRINT*; PRINT*
PRINT*,1234567890

PRINT*,a,b,c

PRINT '(3F10.4)',a,b,c

PRINT 100, a, b, c

PRINT 100, 2./3.

100 FORMAT(3F10.4)

END PROGRAM simple_print