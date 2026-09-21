program debug_it
    implicit none 
    character(len=9) :: debug 
    logical :: print_debug_info 

    call get_command_argument(number=1, value=debug)
    select case (trim(debug))
    case ("debug")
        print_debug_info= .TRUE. 
    case ("normal")
        print_debug_info = .FALSE. 
    case default 
        print *, "Invalid command line argument"
        stop 
    end select

    !if (print_debug_info) then 
        ! print some debugging information
    
end program debug_it
