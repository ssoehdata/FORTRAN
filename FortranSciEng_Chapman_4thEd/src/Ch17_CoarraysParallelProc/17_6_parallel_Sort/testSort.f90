! Figure 17-6 from text
!
! This program tests sorting with parallel images.
!
PROGRAM test_sort

USE merge_module 
USE timer_class
IMPLICIT NONE 

INTEGER,PARAMETER :: N_SAMPLES = 100000

REAL,DIMENSION(N_SAMPLES) :: a
REAL,DIMENSION(N_SAMPLES/2) :: b[*]     ! Coarray for parallel sorting
REAL,DIMENSION(N_SAMPLES/2) :: b1       ! Arrays  for sequential sorting
REAL,DIMENSION(N_SAMPLES/2) :: b2       ! Arrays  for sequential sorting
REAL :: elapsed_time 
INTEGER :: i
INTEGER :: m 
REAL,DIMENSION(N_SAMPLES) :: out 
TYPE(timer) :: t 

!**********************************
! Sort the data using two images
!**********************************

! create the input array using image 1

IF (this_image() == 1 ) THEN 
    ! Allocate the data to sort 
    CALL random_number(a)
    
    ! Start the timer 
    CALL t%start_timer()
    
    !Copy the data into working arrays for each image
    b1 = a(1:N_SAMPLES/2)
    b2 = a(N_SAMPLES/2+1:N_SAMPLES)
END IF  

!*********************************************
! Synchronize all images during the creation
! of the input data
!*********************************************

IF (this_image() == 1 ) THEN 
	! Merge the data
	CALL merge ( b1, N_SAMPLES/2, b2, N_SAMPLES/2, out, N_SAMPLES )
	
	! Stop the timer 
	elapsed_time = t%elapsed_time()
	
	! Display the elapsed time 
	WRITE(*, '(A,F8.3,A)') &
		'Parallel sort elapsed time = ', elapsed_time, ' s'
		
    ! Display first 5 samples 
	WRITE(*, '(A)') 'First 5 samples:' 
	DO i = 1, 5
		WRITE (*, '(F10.6)') out(i)
	END DO 
	
	! Display last 5 examples 
	WRITE(*, '(A)') 'Last 5 samples:'
	DO i = N_SAMPLES-4, N_SAMPLES
		WRITE (*, '(F10.6)') out(i) 
	END DO 
ELSE 
	! Stop other images-- they won't be used again 
	STOP
END IF 


!****************************************
! Now sort the data using a single image
!****************************************

IF ( this_image() == 1 ) THEN 
    ! Start the timer 
    CALL t%start_timer()

    ! Copy the data into the working arrays
    b1 = a(1:N_SAMPLES/2)
    b2 = a(N_SAMPLES/2+1:N_SAMPLES)

    ! Merge the data 
    CALL merge (b1, N_SAMPLES/2, b2, N_SAMPLES/2, out, N_SAMPLES )

    ! Stop the timer 
    elapsed_time = t%elapsed_time()

    ! Display elapsed time 
    WRITE (*, '(/A,F8.3,A)') &
        'Sequential sort elapsed time =', elapsed_time, ' s'

    ! Display first 5 samples 
    WRITE(*, '(A)')'First 5 samples:'
    DO i = 1,5 
        WRITE(*, '(F10.6)') out(i) 
    END DO 

    ! Display last 5 samples 
    WRITE(*,'(A)') 'Last 5 samples:' 
    DO i = N_SAMPLES-4,N_SAMPLES
        WRITE (*, '(F10.6)') out(i)
    END DO 
 END IF 

 END PROGRAM test_sort 


