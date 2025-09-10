! Program fills a 10 element array x with values between 0 and .0 in steps of 1 
! print the values of sin(x) and cos(x) using the properties of
! arrays to  simplify the program. 

program ten
    implicit none
    real , dimension(10) :: x,y,z
    integer :: i
    do i=1,10
        x(i)=i/10.0
    end do       
    print *,'cos(x) = ',cos(x)
    print *,'sin(x) = ',sin(x)   
end program ten
