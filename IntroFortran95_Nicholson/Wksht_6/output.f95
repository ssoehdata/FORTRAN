program output 
    implicit none 
    real,dimension(3) :: a,b,c 
    character :: answer*1 
    ! initialize arrays
    a = 1.5 
    b = 2.5 
    c = 3.5 
    write(*,1) 'a', a 
    print *, 'Type y to continue or any other key to finish.'
    read *, answer 
    if (answer /='y') stop 
    write(*,1) 'b',b 
    print *, 'Type y to continue or any other key to finish.'
    read *, answer 
    if (answer /='y') stop
    write(*,1) 'c',c 
    print *, 'Type y to continue or any other key to finish.'
    read *, answer 
    if (answer /='y') stop 
    write(*,1) 'a*b*c',a*b*c 
    1 format(a,3f8.3)
end program output
