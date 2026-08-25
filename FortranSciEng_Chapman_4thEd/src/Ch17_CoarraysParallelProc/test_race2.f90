! Incorporates CRITICAL block to force images to only access the code
! in the critical section one at a time

program test_race2
    INTEGER,CODIMENSION[*] :: i_sum = 0 

    CRITICAL
        i_sum[1] = i_sum[1] + this_image() 
    END CRITICAL 

    WRITE(*,'(A,I0,A,I0)') 'Image ', this_image(), &
        ' finishing: i_sum = ', i_sum[1]

end program test_race2 

