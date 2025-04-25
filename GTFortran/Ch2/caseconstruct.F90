!simple example of case construct 

program selectCaseProg 
    implicit none 
    
    ! local variable delcaration 
    character :: grade = 'B'

    select case (grade)

    case ('A')
        print *, "Excellent!"
    case ('B')

    case ('C')
        print*, "Well done"

    case ('D')
        print *, "You passed"
    case ('F')
        print*, "Better try again"

    case default
        print*, "Invalid grade"
    end select 

    PRINT *, "Your grade is ", grade

end program selectCaseProg
