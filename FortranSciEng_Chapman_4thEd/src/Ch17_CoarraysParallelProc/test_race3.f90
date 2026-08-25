! Placing the WRITE statement in the CRITICAL block
!
! Now the results only depend on the order in which the
! images enter the critical section.
!


program test_race3
    INTEGER,CODIMENSION[*] :: i_sum = 0 

    CRITICAL
        i_sum[1] = i_sum[1] + this_image()
		WRITE(*,'(A,I0,A,I0)') 'Image ', this_image(), &
			' finishing: i_sum = ', i_sum[1]
    END CRITICAL    

end program test_race3
