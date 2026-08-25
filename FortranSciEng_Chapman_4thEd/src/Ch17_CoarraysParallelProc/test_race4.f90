! Constraining the order in which the images are executed will 
! yield deterministic results. However the advantage of parallel processing 
! was lost since we forced the images to run sequentially.

program test_race4
    INTEGER,CODIMENSION[*] :: i_sum = 0 
	INTEGER :: me
	me = this_image()
	
	IF ( me > 1) SYNC IMAGES(me - 1)
	i_sum[1] = i_sum[1] + this_image()
	WRITE(*,'(A,I0,A,I0)') 'Image ', this_image(), &
			' finishing: i_sum = ', i_sum[1]
	
	IF (me < NUM_IMAGES() ) SYNC IMAGES(me + 1)   

end program test_race4
