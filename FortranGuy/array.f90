! from 6th vid 
!single dimensionl array

program array
    implicit none

    ! creating a one-dimesional array
    integer, dimension (50) :: onedim
    integer, dimension(10)  :: resultarray

    ! creating a two-dimensional array
    integer, dimension (10, 10) :: twodim       !10 rows, 10 columns

    real, dimension (5)     :: realArrayone
    real :: randomReal

    integer                 :: i, j  
      

    print*, "Arrays in one Dimension"

    onedim(1) = 999
    print*, onedim(1)    

    ! use a do loop to access the array values

    print*,"Setting all values in the array to zero"
    ! zeroing out the array

    do i = 1, 50
        onedim(i) = 0
    end do

    do i = 1, 50
        print *, onedim(i)
    end do 

    print*, "Setting real values in the array"
    ! Set each value of the array

    do i = 1, 50
        onedim(i) = i * 12
    end do 

    do i = 1, 50
        print *, onedim(i)
    end do 

    ! zero out the 2-dim array using a nested loop (inner and outer loop)
    
    do i = 1, 10    ! the outer loop
        do j = 1,10 ! the inner loop
            call random_number(randomReal) ! populate the array with random real numbers
            twodim(i, j) = (randomReal  * 1000)    ! multiply by 100 to convert to display some integer from the reals with shifted decimal place     
        end do
    end do 

    do i = 1, 10    ! the outer loop
        do j = 1,10 ! the inner loop
            ! need to use write and format below to avoid new line in print
            ! print*, forces a new line
            ! so that we can print in a tabular output like a spreadsheet
            write(*, '(i5)', advance = 'no') twodim(i, j)            
        end do
        print*,' '   ! adding so that a ne line is created after each new row
                     ! this will make the output be ordered in rows and columns in the print
    end do 


    print*, "End Program"

end program array