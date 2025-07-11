! for examples 2a, 2b, 2c and 2d , test by assigning values of 
! 45, 75 and 95 for each example. 
! Test first by performing a "desk compilation" and then confirm /check
! the results.

program ex2a
    integer :: x 
    read *, x 
    if (x > 50) then 
        if (x > 90 ) then
        print *, x, " is very high." 
        else
            print *, x,  " is high."
        end if 
    end if 

end program ex2a
