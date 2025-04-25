module declarations_module 

    implicit none 
    private 
    logical, public :: flag_1, flag_2 

end module declarations_module 

program using_modules 

    use declarations_module 
    implicit none 

    logical, parameter :: f = .false. 
    flag_1 = f 
    flag_2 = .not. flag_1
    
    print *, "DEBUG TEXT"
end program using_modules 
