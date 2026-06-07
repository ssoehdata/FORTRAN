! ES and EN and E format
!
! Forms: 
! where w is a positive integer contstant specifying the field width
!       d is a nonnegative integer constant specifying the number of 
!              digits to the right of the decimal point.
! Ew.d      Real data in exponential notation 
! ENw.d     Real data in engineering notation 
! ESw.d     Real data in scientific  notation
!
! For a FW.d descriptor, w >= d + 3 to allow for the sign of 
!   the number, the first digit, and the decimal.
!
! In E format, real values are usually displayed in normalized 
!   form - a minus sign, if necessary, followed by one leading zero, then
!   a decimal point. 

! For the EW.d , w >= d + 7 , or for the second form Ew.dEe, w >= d + e + 5
! to allow space for sign of the number, leading zero, decimal point and
! exponent.
!
! For ES - used in same manner as E except values are normalized so that
! the mantissa is at least 1 bu less than 10 (unless the value is 0 ).
!
! For EN - also like E descriptor usage, except exponent is constrained
! to be a multiple of 3, so that a nonzero mantissa is >= to 1 and 
! less than 1000.
!


PROGRAM ENES

    IMPLICIT NONE 
    REAL :: A = .12345E8, B = .0237, C = 4.6E-12, D = -76.1684E12
    
    PRINT *
    PRINT *, "Using Exponential 'E' format:"
    PRINT '(1X, 2EN15.5, EN15.4, EN14.4)', A, B, C, D
    PRINT *
    PRINT *, "Using Engineering 'EN' format:"
    PRINT '(1X, 2EN15.5, EN15.4, EN14.4)', A, B, C, D
    PRINT *
    PRINT *, "Using Scientfic 'ES' format:"
    PRINT '(1X, 2ES15.5, ES15.4, ES14.4)', A, B, C, D
    PRINT *

END PROGRAM ENES
