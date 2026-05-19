! Example 2-8


PROGRAM power
! Purpose:
!       To calculate the current, real, reactive, and apparent power,
!       and the power factor supplied to a load.

    IMPLICIT NONE
    ! Data dictionary: declare constants
    REAL, PARAMETER :: DEG_2_RAD = 0.01745329       ! Deg to radians factor
    ! Data dictionary: declare variable types, definitions, & unit
    REAL :: amps                                    ! Current in the load (A)
    REAL :: p                                       ! Real power of load (W)
    REAL :: pf                                      ! Power factor of load (no units)
    REAL :: q                                       ! Reactive power of the load (VAR)
    REAL :: s                                       ! Apparent power of the load (VA)
    REAL :: theta                                   ! Impedence angle of the load (deg)
    REAL :: volts                                   ! Rms voltage of the power source (V)
    REAL :: Z                                       ! Magnitude of the load impedanc (ohms)

    ! Prompt the user for the rms voltage
    WRITE (*,*) ' Enter the rms voltage of the source: '
    READ  (*,*) volts

    ! Prompt the user for the magnitude and angle of impedence.
    WRITE (*,*)  'Enter the magnitude and angle of the impedence '
    WRITE (*,*)  'in ohms and degrees: '
    READ  (*,*)  Z, theta

    ! Perform calculations
    amps = volts / Z
    p = volts * amps * cos (theta * DEG_2_RAD)      ! Rms current
    q = volts * amps * sin (theta * DEG_2_RAD)      ! Real power
    s = volts * amps                                ! Reactive power
    pf = cos (theta * DEG_2_RAD)                    ! Power factor

    ! Write out the results.
    WRITE (*,*) 'Voltage    =       ', volts, ' volts'
    WRITE (*,*) 'Impedence  =       ', Z, ' ohms at ', theta, ' degrees'
    WRITE (*,*) 'Current    =       ', amps, ' amps'
    WRITE (*,*) 'Real power =       ', p, ' watts'
    WRITE (*,*) 'Reactive Power =   ', q, ' VAR'
    WRITE (*,*) 'Apparent Power =   ', s, ' VA'
    WRITE (*,*) 'Power Factor   =   ', pf

END PROGRAM power
