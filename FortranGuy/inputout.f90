! from video 5 in the series
!************************************
! input from keyboard and I/O
! sharing using the format statement

program inputout
    implicit none

    integer::userAge = 0
    character(32)::userFullName
    real::distanceInKm = 0.0
    real::distanceInMeters = 0.0



    print*, "Input Output example"
    !(*, "(A)", advance="no") means write to std out '*", and "(A)" is to using alphabetic characters
    ! and not to advance line (i.e. print on same line)
    write(*,"(A)", advance="no") "Please enter your name: "
    read(*, "(A, A)") userFullName ! dbl AA for multiple entries for first last name
    write(*, "(A)") "Hello ", userFullName 

    write(*,"(A)", advance="no") "Enter your age in years: "
    read(*,*) userAge     
      
    print "(A, i5.3)", "You entered: ", userAge
    ! could also use the following format / using write
    ! write(*, "(A,14)", "You entered:", userAge  - note the missing comma at beginning compared to print *,
    write(*, "(A)", advance="no") "Enter a distance in Kilometers (e.g.: 3.44): "
    read(*, "(F12.2)") distanceInKm
    write(*, "(A,F12.2)") "You entered:",distanceInKm
    ! below is the same, but using the format option/ will call it '3'
    ! n.b.: the format is in double qoutes
    write(*,3) "You entered(using format)", distanceInKm
    3 format(A,F12.2) 

    ! below '2' is a label for where the data is located
    write(*, 2) userAge   ! this is a nice compact formatting option 
        !!Format statement
        !2 format("You entered (using format): ", i4)  ! as example this can even be moved to bottom
    write(*, 2) userAge  ! can reuse the format created 
    
    distanceInMeters = distanceInKm * 1000
    write(*, "(A,F12.2)") "Distance in meters: ", distanceInMeters
    write(*,3) "Distance in meters(using format): ", distanceInMeters

    
    print*, "Ending program."
    !Format statement (this time moved to end of program)
    2 format("You entered (using format): ", i4)
    !3 format(A, F12.2)   ! this could also be moved from above to down here
end program inputout
