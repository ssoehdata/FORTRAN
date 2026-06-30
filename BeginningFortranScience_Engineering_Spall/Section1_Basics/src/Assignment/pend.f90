! You are tasked with designing a pendulum 
! for a cuckoo clock.  Every 1/2 swing (1/2 a period) 
! of the pendulum should be completed in 1 second.

! If we brought our clock to the moon, where
! gravity is 1.62 m/s^2, how long would the
! pendulum have to be?

program pendulum 
    implicit none 
    
    ! L is pendulum length 
    ! g acceleration of gravity
    ! t is the period for the pendulum arc
   
    real :: g, length, period, pi
    PI=4.0*ATAN(1.0) 
    
    ! time of period will be 2.0 seconds
    
    print *; PRINT*
    print *, "Enter desired pendulum period  in seconds:"
    READ (*,*) period
    PRINT*
    print *, "Enter the acceleration of gravity in m/s^2:"
    READ(*,*) g
    
    length = g*(0.5*period/PI)**2

   ! [] cast inputs for l and g into reals for calculation
    
    PRINT *, "The required length for the pendulum is: " , length, "meters."

    ! period = 2*pi*SQRT(L/g)

end program 
