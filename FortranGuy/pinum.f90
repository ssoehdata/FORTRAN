program pinum
    implicit none

    integer :: someInteger 
    integer :: someInteger1 
    integer :: someInteger2
    real    :: someReal1
    real    :: someReal2
    real :: try

    


    real(8),  parameter :: PI_8  = 4 * atan (1.0_8) ! defines PI

    try = 3.14151926 
    someInteger1 = PI_8 ! This removes the fractional portion
    someReal1 = PI_8-someInteger1 ! This removes the integer portion leaving fraction only
    someReal2 = someReal1 * 10000 ! If you just want 4 fractional digits
    someInteger2 = someReal2 ! Need to convert it to an integer to chop off the fraction
    someReal2 = someInteger2 ! Need to convert that back to a real so we can divide later
    someReal2 = somereal2/10000 ! Recover our 4 digit fraction
    someReal1 = someInteger1 + someReal2 ! Add the integer portion and real portion together
    ! someReal1 will now have the 4-digit fraction of PI

   

    !integer :: PI_8 = 3.14151926
    
    someReal1 = INT(PI_8) + (INT((PI_8 - INT(PI_8))*(10.0**5)))/(10.0**5)
    print "(A,F8.6)", "This is using F8.6 " , someReal1
    print "(A,F8.5)", "This is the arctan calculated value for PI ", PI_8
    print "(A,F100.8)","Printing the combined function ", someReal1
    print *, dble(try), "Using the double precision format"
 
end program pinum