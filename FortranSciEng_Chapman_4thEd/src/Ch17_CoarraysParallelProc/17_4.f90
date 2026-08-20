PROGRAM test_sync_image 
    !    Image 1 
    IF ( this_image() == 1) THEN 
        WRITE(*, '(A)') 'Image 1 syncing with images 2 and 3.'
        SYNC IMAGES( [2,3])
        WRITE(*,'(A)') 'Image 1 after the sync point'

    END IF 

    ! Image 2 
    IF (this_image() == 2 ) THEN 
        WRITE(*, '(A)') 'Image2 after the sync point'
    END IF 

    ! Image 3 
    IF (this_image() == 3 ) THEN 
        WRITE(*, '(A)') 'Image 3 not syncing with image 1'
    END IF 

    ! All 
    WRITE(*,'(A,I0,A)') 'Image ', this_image(), ' reached end.'
 
 END PROGRAM test_sync_image
