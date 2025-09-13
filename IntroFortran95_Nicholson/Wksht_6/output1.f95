! refactoring of output.f95 
! and introducing subroutines

program output1 
    implicit none 
    real, dimension(3) :: a,b,c 
    ! initialize arrays 
    a = 1.5
    b = 2.5 
    c = 3.5 
    write(*,1) 'a',a 
    call prompt() 
        write(*,1) 'b',b 
    call prompt() 
        write(*,1) 'c',c 
    call prompt() 
        write(*,1)'a*b*c',a * b * c 
    1   format(a,3f8.3)
end program output1


!+++++++++++++++++++++++++++++++++++++++++++

! 'call prompt()' in the main program (output1) calls the subroutine prompt() 
! defined below:

subroutine prompt()
    ! prompsts for a keypress 
    implicit none 
    character answer*1 
    print*, 'Type y to continue or any other key to finish'
    read *, answer 
    if (answer /='y') stop 
end subroutine prompt 


! using this subroutine makes it easier to maintain and make changes
! to the prompt() as all the arguments are in one place. 