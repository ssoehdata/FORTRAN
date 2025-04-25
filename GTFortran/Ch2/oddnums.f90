! demonstrates modulo operator and do loop with no control

! This program counts the number of odd numbers 
! in a file of nonnegative integers, 
! which occur one per line in the input file. 
! The first negative number is treated as end of data.

program odd_numbers
    implicit none 
    integer :: number, number_of_odd_numbers 

    PRINT *, "Enter digits to execute the program. To end the program", & 
            " and see the result, enter a negative integer."

    number_of_odd_numbers = 0 
    do 
        read *, number 
        print *, "Input data number:", number 
        if (number < 0) then 
            exit 
        else if (modulo (number, 2) == 0) then 
            cycle 
        else
            number_of_odd_numbers = number_of_odd_numbers + 1 
        end if 
    end do

    print *, "The number of odd numbers is", number_of_odd_numbers

end program odd_numbers


!  basic structure in pseudocode: 

! do 
!   Attempt to read some data 
!   If all data have been processed, then exit 
!   Process the data 
! end do 

