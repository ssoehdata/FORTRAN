program inches_to_feet
    implicit none
    real :: inches 
   ! There are 12 inches per foot
    real, parameter :: inches_per_foot = 12.0

    read *, inches
    print *, inches, "inches =", &
        inches / inches_per_foot, "feet."

end program inches_to_feet