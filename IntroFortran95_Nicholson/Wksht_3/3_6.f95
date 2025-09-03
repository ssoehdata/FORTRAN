program increment 
implicit none 
integer :: i 
real :: x
x = 1.0 
do i=1,10
    !x = 1.0 N.B. if x = 1.0 is intialized inside the do loop here (instead of outside), 
    x = x + 1.0  ! all results will be 2.000                
    print *, i, x 
end do 
end program increment 


! It is important to understand that if we use constructions such as
! x = x + 1.0, 
! then it is vital to initialise x to some value. 
! If we don't, it is possible that the value might be set to any random number.
! Run the program, make a note of the final value of x 
! then put an exclamation mark in front of the x = 1.0 statement and run the program again.
