program ex2c 
    integer :: x 
    read *, x     
    if (x > 50) then         
        if (x > 90) then 
        print *, x, " is very high."
        end if 
    else
        print *, x, " is high."
    end if
end program ex2c 
