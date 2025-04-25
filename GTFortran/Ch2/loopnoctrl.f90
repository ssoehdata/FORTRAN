! example of do loop with no loop control 

program some_power_of_2 
    
    implicit none 
    integer :: power_of_2 

    power_of_2 = 1 ! The zero power of 2 
    print_power: do 
        print *, power_of_2 
        power_of_2 = 2 * power_of_2 
        if (power_of_2 >= 1000) exit print_power 
    end do print_power 
end program some_power_of_2 
