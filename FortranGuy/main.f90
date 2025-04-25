program fortVar
    implicit none
    ! i, j, k, l, m, n = integers
    ! anything else = float
    integer   :: int1
    real      :: float1
    character :: middleInitial
    logical   :: trueFalse    
    !strings
    character(len=80)   :: fullLine
    character(len=120)  :: fullName    
    integer             :: imyAge = 22 
    !imyAge = 22
    !integer :: imyAge = 22  this will compile with 'implicit none' declared
    !but without implicit none, you could simply have
    ! imyAge = 22 and it would compile and run
    
    
    integer(kind=2)  :: hwordInt
    integer(kind=4)  :: dwordInt
    integer(kind=8)  :: qwordInt

    integer(kind=2)  :: hword
    integer(kind=4)  :: aDouble
    integer(kind=16) :: aLongDouble

    real(kind=4)     :: aFloat
    real(kind=8)     :: aDoubleReal
    real(kind=16)    :: aLongDoubleReal   

    fullLine = "This is a full the first full line of Data. "                  
    fullName =  "My fullName is HAL, however " // & 
                "It would be more precise to state my full name " // &
                "as HAL900, since I am a 9000 series computer."
    int1 = 0
    float1 = 123.45
    middleInitial = "R"
    trueFalse = .TRUE.

    print *, float1
    print *, middleInitial
    print *, trueFalse
    print *, imyAge
    print *, huge(float1)

    
    print *,  huge(aDoubleReal)
    print *,  huge(aLongDouble)

    print *,  huge(hwordInt)
    print *,  huge(dwordInt)
    print *,  huge(qwordInt)
    print *, fullLine
    print *, fullName    
    print *, "Program running and all systems nominal Dave"
   

end program fortVar 
