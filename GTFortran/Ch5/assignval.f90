program test_sign
    implicit none
    real :: number
    character(len=:), allocatable :: number_sign

    read *, number
    if (number > 0) then
        number_sign = "postive"
    else if (number == 0) then
        number_sign = "zero"
    else
        number_sign = "negative"
    end if 
    print *, number, "is ", number_sign
end program test_sign
        
    