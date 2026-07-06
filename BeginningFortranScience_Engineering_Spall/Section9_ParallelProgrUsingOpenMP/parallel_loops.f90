!     OpenMP program to add a(i)=b(i)+c(i) in parallel
!     REPORT MFLOPS

      PROGRAM PARALLEL
!$    USE OMP_LIB
      IMPLICIT NONE
      INTEGER (KIND = 4) :: i,numthread,N,id  !default 32 bit integers
      INTEGER (KIND = 8) :: countrate, start, finish  !64 bit integers
      REAL (KIND=8) :: walltime,mflops,start1,finish1
      REAL, ALLOCATABLE, DIMENSION(:) :: a,b,c

      PRINT*
      WRITE(*,'(A)',ADVANCE='NO')'Enter number of threads:  '
      READ(*,*)numthread
!$    CALL OMP_SET_NUM_THREADS(numthread)

      WRITE(*,'(A)',ADVANCE='NO')'Enter array length:  '
      READ(*,*)N
      PRINT*
!     allocate space for arrays
      ALLOCATE(a(1:N),b(1:N),c(1:N))
!***************************************************************
      ! initialize arrays for addition
      a=1.; b=2.; c=3.

!     (COUNTRATE refers to the number of processor clock counts per second) 
      CALL SYSTEM_CLOCK(start,countrate)

!$OMP PARALLEL DO private(i)
      DO i = 1,N
         a(i) = b(i) + c(i)
write(*,*)'thread= ', omp_get_thread_num(),'  i= ',i
      END DO
!$OMP END PARALLEL DO

      CALL SYSTEM_CLOCK(finish)
      PRINT*,'start=',start,'   finish=',finish,'   countrate=',countrate
      walltime=REAL(finish-start)/REAL(countrate) !i.e., counts/(counts/sec.)
      mflops=REAL(N)/(walltime*1.e6)     !N additions completed
      PRINT*; PRINT*,'walltime= ',walltime,'    MFLOPS=',mflops
!*******************************************************************
      DEALLOCATE(a,b,c)

      END PROGRAM PARALLEL
