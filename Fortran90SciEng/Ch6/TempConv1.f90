PROGRAM Temperature_Conversion_1

    ! Program to convert several Fahrenheit temperatures to the
    ! corresponding Celsius temperatures. The function Fahr_to_Celsius 
    ! is used to perform the conversions. Identifiers used are: 
    ! Fahr_to_Celsius : internal function subprogram that converts 
    !               Fahrenheit temperature to Celsius 
    ! FahrenheitTemp : a Fahrenheit temperature to be converted 
    ! CelsisusTemp   : the corresponding Celsius temperature 
    ! Response      : user response to "More data?" query 

    ! Input: FahrenheitTemp, Resonse 
    ! Output: CelsiusTemp


    IMPLICIT NONE 
    REAL :: FahrenheitTemp, CelsiusTemp 
    Character(1) :: Response 

    DO 
        ! Get a Fahrenheit temperature 
        WRITE (*, '(1X, A)', ADVANCE = "NO") "Enter a Fahrenheit temperature: "
        Read *, FahrenheitTemp 

        !   Use the function Fahr_to_Celsius to convert it to Celsius 
        CelsiusTemp = Fahr_to_Celsius(FahrenheitTemp)

        ! Output the result 
        PRINT '(1X, 2(F6.2, A))', FahrenheitTemp, & 
        " in Fahrenheit is equivalent to ", CelsiusTemp, " in Celsius"

        ! Check if more temperatures are to be converted 
        WRITE (*, '(/1X, A/)', ADVANCE = "NO") & 
            "More temperatures to convert (Y or N)? "
        READ *, Response 
        IF (Response /= "Y") EXIT 
    END DO 

    CONTAINS 
    !---------------------------------------------------------------------------------------
        ! Function to convert a Fahrenheit temperature to Celsius 
        ! 
        ! Accepts: A temperature in Fahrenheit 
        ! Returns: The corresponding Celsius temperature
    !----------------------------------------------------------------------------------------

        FUNCTION Fahr_to_Celsius(Temperature)

            REAL :: Fahr_to_Celsius 
            REAL, INTENT(IN) :: Temperature

            Fahr_to_Celsius = (Temperature - 32.0) / 1.8
        
        END FUNCTION Fahr_to_Celsius 
END PROGRAM Temperature_Conversion_1
