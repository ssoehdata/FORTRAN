! Fig 9-1
SUBROUTINE simul (a, b, ndim, n, error )

! Purpose: 
!       Subroutine to solve a set of n linear equations in 
!       n unknowns using Gaussian elimination and the 
!       maximum pivot technique.

IMPLICIT NONE 
INTEGER,INTENT(IN) :: ndim 
REAL,INTENT(INOUT), DIMENSION(ndim,ndim) :: a
REAL,INTENT(INOUT), DIMENSION(ndim) :: b
INTEGER, INTENT(IN) :: n
INTEGER, INTENT(OUT) :: error

REAL, PARAMETER :: EPSILON = 1.0E-6     ! A small number for comparison
                                        ! when determining singular eqtns
REAL :: factor
INTEGER :: irow
INTEGER :: ipeak
INTEGER :: jrow
INTEGER :: kcol
REAL :: temp

! Process n times to get all equations...
mainloop: DO irow = 1, n                ! Throws deprecation warning, 'END
                                        ! expression in DO loop must be an integer'
! Find peak pivot for column irow in rows irow to n 
ipeak = irow 
max_pivot: DO jrow = irow+1, n
    IF (ABS(a(jrow,irow)) > ABS(a(ipeak,irow)))  THEN 
        ipeak = jrow
    END IF 
 END DO max_pivot

! Check for singular equations 
singular: IF ( ABS(a(ipeak,irow)) < EPSILON ) THEN 
    error = 1
    RETURN
END IF singular

! Otherwise, if ipeak /= irow, swap equations irow & ipeak
swap_eqn: IF ( ipeak /= irow ) THEN 
    DO kcol = 1, n 
       temp     =  a(ipeak,kcol)
       a(ipeak,kcol) = a(irow,kcol)
       a(irow,kcol)  = temp
    END DO 
    temp        =  b(ipeak)
    b(ipeak)    =  b(irow)
    b(irow)     =  temp 
END IF swap_eqn

! Multiply  equation irow by -a(jrow( /a(irow,irow), and add
! it to equn jrow (for all eqns except irow itself).
eliminate: DO jrow = 1,n 
    IF ( jrow /= irow ) THEN
        factor = -a(jrow,irow)/a(irow,irow)
        DO kcol = 1, n
            a(jrow,kcol) = a(irow,kcol)*factor + a(jrow,kcol)
        END DO
        b(jrow) = b(irow)*factor + b(jrow)
    END IF
 END DO eliminate
END DO mainloop

! End of main loop over all equations. All off-diagonal
! terms are now zero. To get the final answer, we must 
! divide each equation by the coefficient of its on-diagonal term.

divide: DO irow = 1, n
    b(irow)     = b(irow) / a(irow,irow)
    a(irow,irow) = 1.0
END DO divide

! Set error flag to 0 and return
error = 0
END SUBROUTINE simul
