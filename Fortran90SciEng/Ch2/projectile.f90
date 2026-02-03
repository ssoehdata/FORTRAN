! Calculates the velocity and height of a projectile
! given its initial height, initial velocity, and constant
! acceleration. Identifiers used are: 

! InitialHeight   : Initial height of projectile (meters)
! Height       : height at any time (meters)
! IntitialVelocity  : initial vertical velocity (m/sec)
! Velocity      : vertical velocity at any time (m/sec)
! Acceleration  : vertical acceleration (m/sec/sec)
! Time        : time since launch (seconds)
!
! Input:  InitialHeight, InitialVelocity, Time
! Output: Velocity, Height 

PROGRAM Projectile 

    IMPLICIT NONE 
    REAL :: InitialHeight,Height,InitialVelocity,Velocity, &
          Acceleration = -9.80655, Time 
    
    ! Obtain values for InitialHeight, InitialVelocity, and Time
    PRINT*, "Enter the initial height (m) and velocity (m/sec):"
    READ *, InitialHeight, InitialVelocity 
    PRINT *, "Enter time in seconds at which to calculate height and velocity:"
    READ *, Time

    ! Calculate the height and velocity 
    Height = 0.5 * Acceleration * Time ** 2 &
            + InitialVelocity * Time + InitialHeight 

    Velocity = Acceleration * Time + InitialVelocity

    ! Display Velocity and Height 
    PRINT *, "At time", Time, "seconds"
    PRINT *, "the vertical velocity is", Velocity, "m/sec"
    PRINT *, "and the height is", Height, "meters"
  
END PROGRAM Projectile 