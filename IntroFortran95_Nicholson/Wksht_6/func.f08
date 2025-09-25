program func 
    implicit none 
    integer, parameter :: ikind=selected_real_kind(p=15)
    real (kind=ikind) :: deg,rads 
    print *, 'Enter  an angle in degrees'
    read *, deg 
    write(*,10) 'sin =    ',sin(rads(deg)) 
    write(*,10) 'tan =    ',tan(rads(deg))
    write(*,10) 'cos =    ',cos(rads(deg))
    10 format(a,f10.8)
end program func

function rads(degrees) 
implicit none 
integer, parameter :: ikind=selected_real_kind(p=15) 
! returns radians 
real (kind=ikind) :: pi, degrees, rads
pi=4.0_ikind*atan(1.0_ikind)
rads=(degrees*pi/180.0_ikind)
end function rads 

! when the program gets to the line:    write(*,10) 'sin =    ',sin(rads(deg)) 
! it jumps to:                          function rads(degrees)

! The data type must be declared in both the main program as well as 
! the function as if it were a variable 