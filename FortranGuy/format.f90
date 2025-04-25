program format
    implicit none

    real :: somereal

    somereal = 3.1415926535897
    
print "(f100.17)", somereal
print *, dble(somereal),"using dble format"
print "(A,g0)", "Using the g0 format ", somereal  

end program format
