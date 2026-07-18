SUBROUTINE dsimul (a, b, soln, ndim, n, error ) 
!
! Purpose:
!   Subroutine to solve a set of N linear equations in N 
!   unknowns using Gaussian elimination and the maximum
!   pivot technique. This version of simul has been 
!   modified to use array sections and automatic arrays. 
!   It uses double precision arithmetic to avoid
!   cumulative roundoff errors. It DOES NOT DESTROY the
!   original input values. 

    USE iso_Fortran_env                ! specifies we want 64-bit real variables in this subroutine
    IMPLICIT NONE 

    REAL(KIND=REAL64), PARAMETER :: EPSILON = 1.0E-12
                                       ! A "small number for comparison
                                       ! when determining singular eqtns

    INTEGER, INTENT(IN) :: ndim
    REAL(KIND=REAL64), INTENT(IN), DIMENSION(ndim,ndim) :: a
                                        ! Array of coefficients (N x N),
                                        ! This array is of size ndim x
                                        ! ndim, but only N x N of the
                                        ! coefficients are being used.
    REAL(KIND=REAL64), INTENT(IN), DIMENSION(ndim)  :: b
                                        ! Input right hand side of eqtn
    REAL(KIND=REAL64),INTENT(OUT), DIMENSION(ndim) :: soln
                                        ! Output: Solution vector. 
    
    INTEGER, INTENT(IN)  :: n           ! Number of eqtns to solve
    INTEGER, INTENT(OUT) :: error       ! Error flag:
                                        !   0  no error
                                        !   1  Singular equations

   REAL(KIND=REAL64),DIMENSION(n,n) :: a1   ! Copy of "a" that will be 
                                            ! destroyed during the solution.

   REAL(KIND=REAL64)    :: factor       ! Factor to multiply eqn irow by
                                        ! before adding to eqn jrow            
 
   INTEGER  :: irow                                  
   INTEGER  :: ipeak 
   INTEGER  :: jrow 

   REAL(KIND=REAL64)    :: temp 
   REAL(KIND=REAL64),DIMENSION(n) :: temp1
   
   ! Make copies of arrays "a" and "b" for local use
   a1 = a(1:n,1:n)
   soln = b(1:n)

   mainloop: DO irow = 1, n
        ! Find peak pivot for column irow in rows irow to N
        ipeak = irow
        max_pivot: DO jrow = irow+1, n 
            IF (ABS(a1(jrow,irow)) > ABS(a1(ipeak,irow))) THEN
                ipeak = jrow
            END IF
        END DO max_pivot 
        ! Check for singular equations
        singular: IF (ABS(a1(ipeak,irow)) < EPSILON ) THEN 
            error = 1
            RETURN 
        END IF singular 

        ! Otherwise, if ipeak /= irow, swap eqtns irow & ipeak 
        swap_eqn: IF (ipeak /= irow ) THEN 
            temp1 = a1(ipeak,1:n)
            a1(ipeak,1:n) = temp1
            temp = soln(ipeak)
            soln(ipeak) = soln(irow)
            soln(irow) = temp
        END IF swap_eqn
   
        eliminate: DO jrow = 1, n 
            IF (jrow /= irow ) THEN 
                factor = -a1(jrow,irow)/a1(irow,irow)
                a1(jrow,1:n) = a1(irow,1:n)*factor + a1(jrow,1:n)
                soln(jrow) = soln(irow)*factor + soln(jrow)
            END IF 

         END DO eliminate 
      END DO mainloop 
      ! End of main loop over all equations. All off-diagonal terms are now zero.
      ! Divide each equation by the coefficient of its on-diagonal term to get the
      ! final answer.

      divide: DO irow = 1, n 
        soln(irow) = soln(irow) / a1(irow,irow)
      END DO divide
        ! Set error flag to 0 and return.
        error = 0

END SUBROUTINE dsimul 

   








