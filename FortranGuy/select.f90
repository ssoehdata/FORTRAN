! example 9 from series 
! demonstrates select/case statements (switch statements)
program select
    implicit none 
    integer  :: someInt = 7 
    real     :: someReal = 1.11 
    CHARACTER(1)  :: someChar 
    CHARACTER(18) :: myName 

    print *, "*** TESTING INTEGER SELECT/CASE STATEMENTS ***"
    someInt = 999

    intSelect: SELECT CASE (someInt)
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
        CASE (6, 7, 8)
            print *, "someInt has a value of either 6, 7 or 8"
        CASE (9:100)
            print *, "someInt has a value between 9 and 100"
        CASE DEFAULT
            print *, "someInt was not 0 - 100"
    END SELECT intSelect      ! need to add the name of the select ('intSelect')
                              ! because it was given this label initially

    someChar = 'B'
    charSelect: SELECT CASE (someChar)
        CASE ('A', 'a')
            print*, "someChar has a value of A or a"
        CASE ('B', 'b')
            print*, "someChar has a value of B or b"
        CASE ('S', 's')
            print*, "someChar has a value of S or s"
        CASE DEFAULT 
            print *, "someChar has a value other than A,B or S"
    END SELECT charSelect    
    
    myName = 'HAL'
    strSelect: SELECT CASE (myName)
        CASE ('Roger')
            print *, "Hello Roger"
        CASE ('HAL')
            print *, "Hello HAL"
        CASE DEFAULT 
            print *, "PLEASE IDENTIFY YOURSELF"
    END SELECT strSelect

    print *," ENDING PROGRAM SELECT/CASE STATEMENT EXAMPLES"

end program select 
