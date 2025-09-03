program negloop
    implicit none 
    real   :: y
    integer :: x
    y= 1.0
    
    do  x = -10, 10, 1
       print *, y/x   
       if (x == 0) then
        print*, "Can't divide by zero"
       end if     
    end do       
   
end program negloop
