! continuation from vid5 at timestamp 28:10
! covers adding error labels and goto statements

program inputout2
    implicit none

    integer::userAge = 0
    character(32)::userFullName
    real::distanceInKm = 0.0
    real::distanceInMeters = 0.0

    print*, "Input Output example"
    write(*,"(A)", advance="no") "Please enter your name: "
    read(*, "(A, A)") userFullName ! dbl AA for multiple entries for first last name
    write(*, "(A, A)") "Hello ", userFullName 

    write(*,"(A)", advance="no") "Enter your age in years: "
    ! Adding an error label (NOT a line number)
    read(*,*, ERR=992) userAge     
    !print "(A, i4)", "You entered: ", userAge
    write(*,"(A, i4)") "You entered:", userAge 
    write(*,20) userAge
    

    write(*, "(A)", advance="no") "Enter a distance in Kilometers (e.g.: 3.44): "
    read(*,"(F5.2)", ERR=993) distanceInKm
    write(*,  "(A,F5.2)") "You entered:",distanceInKm   
    write(*,30) "You entered(using format)", distanceInKm    

    ! below '20' is a label for where the data is located
    write(*, 20) userAge  
        
        
    distanceInMeters = distanceInKm * 1000
    write(*, "(A,F12.2)") "Distance in meters: ", distanceInMeters
    write(*,35) "Distance in meters(using format): ", distanceInMeters
    
    !Format statements (this time moved to end of program)
    20 format("You entered (using format): ", i4)
    30 format(A, F5.2)   
    !32 format(A,F6.2)
    35 format(A,F8.2)

    ! Error processing
    goto 999   ! N.B.: needed to add this, his ex. did not incl-otherwise printed 992 error erroneously
    992 write(*,*) "****** ERROR: Invalid Integer input Dave."
    goto 999
    993 write(*,*) "****** ERROR: Invalid Floating Point input Dave."
    goto 999

    ! Adding end of program label / moving end program output here
    999 print*, "Ending program."

end program inputout2
