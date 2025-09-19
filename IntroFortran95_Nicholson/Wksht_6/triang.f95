! sanity check to find area of triangle 
program triangtest 
    implicit none 

    real ::b,h, Area

    print *, 'Enter base and height'
    read *, b,h 
    call Area(b,h)
    
    print *,'Area of the triangle is ', Area

end program triangtest 


subroutine area_t  
    implicit none 
    real :: b,h,Area

    Area = 0.5 *(b*h)

end subroutine area_t 
    