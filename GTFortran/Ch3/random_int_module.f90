module random_int_module 

    implicit none 
    private 
    public :: random_int 

contains 

subroutine random_int(random_result, low, high)

    integer, intent(out) :: random_result 
    integer, intent(in)  :: low, high 
    real :: uniform_random_value 

    call random_number(uniform_random_value)
    random_result = & 
        int((high - low + 1) * uniform_random_value + low)

end subroutine random_int 

end module random_int_module 

program seven_11 

    use random_int_module 
    implicit none 

    integer, parameter :: number_of_rolls = 1000 
    integer :: die_1, die_2, dice, i, wins 

    call random_seed() 
    wins = 0 
    do i = 1, number_of_rolls 
        call random_int(die_1, 1, 6)
        call random_int(die_2, 1, 6)
        dice = die_1 + die_2 
        if ((dice == 7) .or. (dice == 11)) then 
            wins = wins + 1 
        end if 
    end do 

    print "(a, f6.2)", &  
        "The percentage of rolls that are 7 or 11 is", & 
        100.0 * real(wins) / real(number_of_rolls) 

end program seven_11 


