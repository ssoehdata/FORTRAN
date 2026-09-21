program pendulum
! calculates the frequency and period
! of a pendulum of length L

! Third and correct attempt

 implicit none
 real :: L, f,  T 
 real, parameter :: pi = 3.14159, &
                   g = 9.80665

 print *, "Enter a value for L: "
 read *,  L 
 f = (1.0 / (2.0 * pi)) * sqrt (g / L)
 T = 1.0 / f 
 print*, "Each swing takes", T, "sec."
end program pendulum 