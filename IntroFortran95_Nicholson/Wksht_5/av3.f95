program av3 
    ! Just change the value of the parameter to 
    ! change the size of the ! array. 
    ! Example of an easily maintainable program by 
    ! making the imax paramter easily defineable 

    implicit none 
    integer, parameter      :: imax = 10  ! makes use of parameter data type
    real, dimension(imax)   :: x 
    real                    :: average, sum
    integer                 :: i 
    print *, 'enter', 'imax', 'numbers' 
    sum=0.0 
    do i=1,imax 
        read *, x(i) 
        sum=sum  + x(i)
    end do 
    average=sum/imax 
    print *, 'The average is  ', average 
    print *, 'The numbers are '
    print *, x                             ! prints the entire array
end program av3
