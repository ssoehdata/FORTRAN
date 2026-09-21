program meters_to_inches
! Converts meters to meters to inches 
! The length in meters is typed
! when prompted during execution. 

    implicit none
    real :: meters
    real , parameter :: inches_per_meter = 39.37

    print *, "Enter a length in meters." 
    read *, meters
    print *, meters, "meters =", &
        meters *  inches_per_meter, "inches."
    end program meters_to_inches

    