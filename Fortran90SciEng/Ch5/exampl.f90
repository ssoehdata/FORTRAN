program exampl
    implicit none 
    real :: A = .12345E8, B= .0237, C = 4.6E-12, D = -76.1684E12

    print '(/1X, 2E15.5, E15.4/)', A, B, C, D

end program exampl

! 1X or "  "    for normal spacing 
! "0"           for double spacing
! "1"           for advancing to a new page
! "+"           for overprinting

