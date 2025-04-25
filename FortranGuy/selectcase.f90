! Demonstrating select/case (switch statement) usage in FORTRAN 

program select 
    implicit none  
    
    INTEGER :: someInt =  0
    REAL    :: someReal = 1.11 
    CHARACTER(1) :: someChar 
    CHARACTER(18) :: myName 

    print *, "Testing Select/Case statements"

    print *, "Testing integer select/case"
    someInt = 7
    
    ! no break statement required
    intSelect: SELECT CASE (someInt) ! older style
        CASE (0) 
            print *, "someInt has a value of 0"
        CASE (1) 
            print *, "someInt has a value of 1"
        CASE (2) 
            print *, "someInt has a value of 2"
        CASE (3) 
            print *, "someInt has a value of 3"
        CASE (4) 
            print *, "someInt has a value of 4"
        CASE (5) 
            print *, "someInt has a value of 5"
        CASE (6,7, 8)
            print *, "someInt has a value of either 6 or 7 or 8"
        CASE (9:100)
            print *, "someInt has a value between 9 and 100"

    CASE DEFAULT 
        print *, "someInt was not 0 -100"
    END SELECT intSelect ! if you use the optional format, need to 
                      ! specificy the selectcase stated (here intSelect)




















print *, "ENDING PROGRAM AND EXITING"
end program select 
