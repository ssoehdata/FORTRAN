program extendedconstants 
    ! demonstrates use of extended precision with constants 
    implicit none 
    integer, parameter :: ikind=selected_real_kind(p=18) 
    real (kind=ikind) :: val,x,y 
    val=10/3 
    print *, val        ! 10/3 calculated as integer - wrong! 
    x=10.0 
    y=3.0
    val=x/y             !x/y assigned to extended precision -right! 
    val=10.0_ikind/3    ! extended precision constant -right!
    print *, val 
    val = .12345678901234567890 ! real constant -wrong ! 
    print *, val 
    val = .12345678901234567890_ikind  ! ext precision consts - right! 
    print*, val 
end program extendedconstants
