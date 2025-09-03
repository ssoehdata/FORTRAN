! simple if statement example with "STOP" statement 
program if 
    
    implicit none 
    integer :: num
    print *, ' Enter a positive number.'
    read *, num 
        if (num < 0)  stop 
        if (num < 10) print *, 'less than 10'
        if (num > 10) print *, 'greater than 10'
    print *, 'It is a positive number'

end program if 

