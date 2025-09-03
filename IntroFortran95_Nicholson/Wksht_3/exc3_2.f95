program check
! Integer and real arithmetic 
    implicit none 
    real :: x,y    
    integer i 
    x = 2.0 
    i = 2
    y=x*((2**i)/3) ! First FORTRAN calculates (2**i)/3 and evaluates it as an integer number, 
                   ! then multiplies the result by x and evaluates it as real. 
    print *, y 
    y=x*((2.0**i)/3)  
    print *, y 
    
end program check 


! The output for this program is:

! 2.00000000
! 2.66666675
