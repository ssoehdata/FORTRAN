! Decrementing loop example


program loop3 
    implicit none 
    integer :: i 
    do i = 5,-5, -2   ! starting value for counter, end counter value, increment value
        print *, i 
    end do 
end program loop3
