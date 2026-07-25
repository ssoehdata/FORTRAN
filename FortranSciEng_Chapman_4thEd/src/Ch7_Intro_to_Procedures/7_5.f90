PROGRAM bad_call
!
! Purpose:
!   To illustrate misinterpreted 
!   calling arguments, with a type mismatch
!   when calling a subroutine.
!
    IMPLICIT NONE     
    REAL ::  x = 1. 
    CALL bad_argument  ( x ) 
    END PROGRAM bad_call       

    SUBROUTINE bad_argument ( i ) 
        IMPLICIT NONE 
        INTEGER :: i            ! Declare argument as integer.
        WRITE (*,*) 'I = ', i   ! Write out i.
   END SUBROUTINE bad_argument
