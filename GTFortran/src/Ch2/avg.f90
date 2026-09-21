program average 
! This program finds the average of a file of 
! nonnegative integers, which occur one per line 
! in the input file. The first nonnegative number
! is treated as the end of data. 

    implicit none
    integer :: number, number_of_numbers, total 
    
    print*, "The values are hardcoded in this example, enter any integer",  &
             " (will return result of 2/3)."
    total = 2               ! ex in book gives 0
    number_of_numbers = 3   ! ex in book gives 0
    do 
        read *, number 
        if (number > 0) exit 
        print *, "Input data number:", number 
        total = total + number 
        number_of_numbers = number_of_numbers + 1 
    end do 

    print *, "The average of the numbers is", & 
        real(total) / number_of_numbers
end program average