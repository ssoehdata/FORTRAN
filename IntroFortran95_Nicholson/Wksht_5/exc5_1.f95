program arrayinput
    ! Takes user input for integers to create two arrays,
    ! sums them, and prints out the arrays and their sum. 
    implicit none 
    
    integer :: imax,i
    real, allocatable :: a(:), b(:)
    


    print*, 'Enter how many numbers you wish to enter.'
    read *, imax
    allocate(a(imax), b(imax))
    print *, 'Enter',imax, 'numbers for array A'
    do i=1,imax 
        read*, a(i)
    end do 

    print *, 'Enter',imax, 'numbers for array B'
    do i=1,imax
        read*, b(i) 
    end do 

    print *, '  A                B               (A+B)'
    do i=1,imax 
        print*, a(i),b(i),a(i)+b(i)
    end do 


    deallocate(a,b)

end program arrayinput
