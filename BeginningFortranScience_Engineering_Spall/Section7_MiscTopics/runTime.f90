! Program to check code runtime 
! use different optimization switches 
! use allocatable arrays 

MODULE VARIABLES 
    IMPLICIT NONE 
    SAVE 
    INTEGER :: nx, ny, iterations 
    REAL, ALLOCATABLE, DIMENSION(:,:) :: phi,phiold 
END MODULE VARIABLES 

! -------------------------------------------------

! Main Program 
PROGRAM LAPLACE_SOLVER 
    USE VARIABLES 
    IMPLICIT NONE 
    INTEGER :: status, l, i, j, & 
        count_start, count_end, count_rate
    REAL :: wall_time 

    PRINT * 
    WRITE(*,*) 'Enter number of iterations: ' 
    READ(*,*) iterations 
    PRINT * 
    WRITE(*,*) 'Enter the nunber of cells in one direction: ' 
    READ(*,*) nx; ny=nx
    ALLOCATE (phi(0:nx+1, 0:ny+1), phiold(0:nx+1, 0:ny+1), stat=status)
        IF(status /= 0) THEN
            WRITE(*,*) 'Error in allocating memory.' 
            STOP
        END IF 

   ! Initialize variables 
   phi=0; phi(0,:)=100.; phi(:,0)=100.; phiold=phi;

   CALL SYSTEM_CLOCK(count_start,count_rate) ! start timing 

   DO l=1, iterations 
    phi(1:nx, 1:ny)=0.25*(phi(2:nx+1,1:ny) + phi(0:nx-1,1:ny) + & 
                          phi(1:nx,0:ny-1) + phi(1:nx,2:ny+1))
   END DO 

   CALL SYSTEM_CLOCK(count_end)  !end timing 
   wall_time=real(count_end-count_start)/real(count_rate)
   PRINT *
   PRINT * , 'Run Time = ', wall_time
   PRINT *
   IF(nx .le. 5) THEN 
       DO j=ny+1,0,-1
            WRITE(*,100)(phi(i,j),i=0,nx+1)
       END DO 
   ELSE 
       PRINT*, '(Array to large to write out on screen.)' 
   END IF 

   100 FORMAT(7f10.2) 
   DEALLOCATE(phi,phiold)
   END PROGRAM LAPLACE_SOLVER 

