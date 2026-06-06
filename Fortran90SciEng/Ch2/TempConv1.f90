PROGRAM Temperature_Conversion_1
!---------------------------------------------------
! First version of temperature conversion program 
! Input: Celsius 
! Output: Fahrenheit 
!---------------------------------------------------

    IMPLICIT NONE 
    REAL :: Celsius, Fahrenheit 

    ! Obtain Celsius Temperature
    PRINT * 
    PRINT *,  "Enter temperature in degree Celsius:" 
    READ *,  Celsius 

    ! Calculate corresponding Fahrenheit temperature 
    Fahrenheit = (9/5) * Celsius + 32.0 

    ! Display temperature 
    PRINT *, Celsius, "degrees Celsius = ", &
             Fahrenheit, "degrees Fahrenheit"
    PRINT *
END PROGRAM Temperature_Conversion_1


! This example is a flawed implementation that yields 
! incorrect results (merely adds 32 to input Celsius Temp) .
! This error stems from the use of integers (9/5) rather than 
! reals (9./5.) in the conversion formula. This error
! yields 1 from the cpu vs. 1.8 as it should be in that part of the 
! conversion. 
