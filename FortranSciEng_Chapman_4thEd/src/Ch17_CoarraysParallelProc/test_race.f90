program test_race 
    INTEGER,CODIMENSION[*] :: i_sum = 0
    i_sum[1] = i_sum[1] + this_image()
    WRITE(*,'(A,I0,A,I0)') 'Image ', this_image(), &
        ' finishing: i_sum = ' , i_sum[1]
end program test_race 

