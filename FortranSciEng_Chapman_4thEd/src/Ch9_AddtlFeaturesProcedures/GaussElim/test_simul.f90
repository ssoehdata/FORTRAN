! Figure 9-2
! Driver program to test the subroutine simul 
PROGRAM test_simul 
! Purpose:
!       To test subroutine simul, which
!       solves a set of N linear
!       equations in N unknowns. 

        IMPLICIT NONE 

        INTEGER, PARAMETER :: MAX_SIZE = 10     ! Max number of eqtns
        REAL, DIMENSION(MAX_SIZE,MAX_SIZE) :: a
                ! Array of coefficients (n x n )
                ! This aray is of size ndim x ndim
                ! but only n x n of the coefficients
                ! are being used. The declared dimension
                ! ndim must be passed to the sub, or
                ! it won't be able to interpret subscripts
                ! correctly. (This array is destroyed
                ! during processsing.) 
                ! Input: Right-hand side of eqns.
                ! Output: Solution Vector. 
                ! Error flag:
                !  0 --  No Error
                !  1 --  Singular Equations

        REAL, DIMENSION(MAX_SIZE) :: b
        INTEGER :: error
        CHARACTER(len=20) :: file_name 
        INTEGER :: i             ! Loop index
        INTEGER :: j             ! Loop index       
        INTEGER :: n             ! number of simul eqns (<=MAX_SIZE)
        INTEGER :: istat         ! I/O status

        WRITE(*,"('Enter the file name containing the eqns: ')")
        READ (*,'(A20)') file_name

        OPEN ( UNIT=1, FILE=file_name, STATUS='OLD', ACTION='READ', &
            IOSTAT=istat )
        
        ! Confirm file was successfully opened
        ! If file was opened , read number of eqns in the system.
        fileopen: IF (istat == 0) THEN 
            READ (1,*) n
        ! If num of equations is <=MAX_SIZE,read and process them
        size_ok: IF ( n <=MAX_SIZE ) THEN 
            DO i = 1, n
              READ (1,*) (a(i,j), j=1,n), b(i)
            END DO 
        
        ! Display coefficients 
        WRITE (*,"(/,1X,'Coefficients before call:')")
        DO i = 1,n
                WRITE(*,"(1X,7F11.4)") (a(i,j), j=1,n), b(i)
        END DO

        ! Solve equations 
        CALL simul (a, b, MAX_SIZE, n, error ) 

        ! Check for errors
        error_check: IF ( error /= 0 ) THEN 
            WRITE(*, 1010) 
            1010 FORMAT (/1X,'Zero pivot encountered!', & 
                        //1X, 'There is no unique solution to this system.')
            PRINT *
             
        ELSE error_check 
            ! No errors. Display coefficients 
            WRITE (*,"(/,1X,'Coefficients after call:')")
            DO i = 1, n 
                WRITE(*,"(1X,7F11.4)") (a(i,j), j=1,n), b(i)
            END DO

        ! Write final answer. 
        WRITE (*,"(/,1X,'The solutions are: ')")
        DO i = 1, n 
            WRITE(*,"(3X,'X(',I2,') = ',F16.6)") i, b(i)            
        END DO 
        PRINT *
       END IF error_check
     END IF size_ok
   ELSE fileopen
      
   ! Else file open failed. Tell user.
   WRITE(*,1020) istat
   1020 FORMAT('File open failed--status = ', I6)
   PRINT *
   END IF fileopen
           
END PROGRAM test_simul



