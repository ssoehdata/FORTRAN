! Program runs with errors as each image
! is running independently in parallel.
! SYNC ALL can fix this (ex. 17_3.f90 )


PROGRAM initialize_image 
    IMPLICIT NONE 

    INTEGER :: a[*]  ! Coarray
    INTEGER :: i     ! Loop index
    INTEGER :: m     ! seed 

    IF (this_image() == 1 ) THEN 
        ! Get the seed value using image 1 
        WRITE(*,'(A)') 'Enter an integer: '
        READ(*,*) m 

        ! Use it to initialize the other images 
        DO i = 1, num_images()
            a[i] = i * m 
        END DO 

    END IF 

    WRITE(*,'(A,1O,A,1O)4') 'The result from image ', &
        this_image(), ' is ', a

   END PROGRAM initialize_image 

