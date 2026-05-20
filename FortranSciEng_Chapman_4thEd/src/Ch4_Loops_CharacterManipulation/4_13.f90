! Figure 4-13

PROGRAM ball

! Purpose:
!   To calculate distance traveled by a ball thrown at a specified
!   angle THETA and at a specified velocity VO from a point on the
!   surface of the earth, ignoring the effects of air friction and
!   the earth's curvature.

    IMPLICIT NONE

    REAL, PARAMETER :: DEGREES_2_RAD = 0.01745329  ! Deg ==> rad conv.
    REAL, PARAMETER  :: GRAVITY = -9.81              ! Accel. due to gravity (m/s)

    INTEGER :: max_degrees  ! angle at which the max rng occurs (degrees)
    REAL    :: max_range    ! Maximum range for the ball at vel v0 (meters)
    REAL    :: range        ! Range of the ball at a particular angle (meters)
    REAL    :: radian       ! Angle at which the ball was thrown ( in radians )
    REAL    :: theta        ! Angle at which the ball was thrown ( in degrees )
    REAL    :: v0           ! Velocity of the ball ( in m/s )

    max_range = 0.
    max_degrees = 0
    v0 = 20.

    ! Loop over all specified angles

    loop: DO theta = 0, 90

        ! Get angle in radians
        radian = real(theta) * DEGREES_2_RAD

        ! Calculate range in meters
        range = ( -2. * v0**2 / GRAVITY) * SIN(radian) * COS(radian)

        ! Write out the range for this angle
        WRITE (*,*) 'Theta = ', theta, ' degrees: Range = ', range, &
            ' meters'

        ! Compare the range to the previous maximum range. If this
        ! range is larger, save it and the angle at which it occurred.
        IF ( range > max_range ) THEN
            max_range = range
            max_degrees = theta
        END IF

    END DO loop

        ! Skip line, and then write out the maximum rnabge and the angle
        ! at which it occurred.
        WRITE (*,*) ' '
        WRITE (*,*) ' Max range = ', max_range, ' at ', max_degrees, ' degrees'

END PROGRAM ball
