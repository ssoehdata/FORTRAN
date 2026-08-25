! Modified version of 17_4.f90 
PROGRAM initialize_image3
    IMPLICIT NONE 

    INTEGER :: a[*]     ! Coarray
    INTEGER :: i        ! Loop index
    INTEGER :: m        ! Seed
    INTEGER :: me
        
    IF ( this_image() == 1) THEN 
        ! Get seed value using image 1
        WRITE(*, '(A)') 'Enter an integer:'
        READ(*,*) m  
    
    DO i = 1, num_images() 
        a[i] = i*m 
    END DO   
    END IF  
   
   
   ! Synchronize all images before continuing
   SYNC ALL 
  
  ! Write out results from each image in sequence
  me = this_image()
  IF  ( me > 1 ) SYNC IMAGES(me - 1 )
  WRITE(*, '(A,I0,A,I0)') 'The result from image ', &
      this_image(), ' is ', a
  IF ( me < NUM_IMAGES() ) SYNC IMAGES(me + 1) 
   
  END PROGRAM initialize_image3


    
