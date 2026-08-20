! Modified version of initialize program example 17_2

PROGRAM initialize_image2 
    IMPLICIT NONE 

    INTEGER :: a[*]     ! Coarray 
    INTEGER :: i, m     ! loop index and seed 

    IF (this_image() == 1 ) THEN 
        ! Get the seed value using image 1 
        WRITE(*,'(A)') 'Enter an integer: '
        READ(*,*) m 

        ! Use to initialize the other images 
        DO i = 1, num_images()
            a[i] = 1*m 
        END DO 

    END IF 

    ! Synchronize all images before continuing 
    SYNC ALL 

    WRITE(*,'(A,I0,A,I0)4') 'The result from image ', &
        this_image(), ' is ', a


END PROGRAM initialize_image2 

     

