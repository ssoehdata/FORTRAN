PROGRAM Radioactive_Decay 
! This program calculates the amount of a radioactive substance that 
! remains after a specified time, given an initial amound and its
! half-life. Variables used are: 
! InitialAmount  : initial amount of substance (mg)
! HalfLife      : half-life of substance (days)
! Time        : time at which the amount remaining is calclulated (days)
! 
! Input:        IntitialAmount, Halflife, Time 
! Output:       AmountRemaining

    IMPLICIT NONE 
    REAL :: InitialAmount, HalfLife, Time, AmountRemaining 

    ! Get values for InitialAmount, HalfLife, and Time 

    PRINT *, "Enter initial amount (mg) of substance, its half-life (days),"
    PRINT *, "and time(days) at which to find amount remaining: "
    READ *, InitialAmount, HalfLife, Time 

    ! Compute the amount of remaining at the specified time
    AmountRemaining = InitialAmount * 0.5 ** (Time  / HalfLife) 

    ! Display AmountRemaining 
    PRINT *, "Amount remaining=", AmountRemaining, "mg"

END PROGRAM Radioactive_Decay
