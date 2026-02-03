PROGRAM Temperature_Conversion_2 

    USE Temperature_Library,  ! ONLY: Fahr_to_Celsius
    
    IMPLICIT NONE 
    REAL :: FahrenheitTemp, CelsiusTemp
    CHARACTER(1) :: Response 

    DO 
        ! Get a Fahrenheit temperature 
        WRITE (*, '(1X, A)', ADVANCE = "NO") "Enter a Fahrenheit temperature: " 
        READ *, FahrenheitTemp

        CelsiusTemp = Fahr_to_Celsius(FahrenheitTemp)

        ! Output the result 
        PRINT '(1X, 2(F6.2, A))', FahrenheitTemp, & 
          " in Fahrenheit is equivalent to ", CelsiusTemp, " in Celsius"
    
        ! Check if more temperatures are to be converted 
        WRITE (*, '(/1X, A)' , ADVANCE = "NO") & 
            "More temperatures to convert (Y or N)? "
        READ *, Response 
        IF (Response /= "Y") EXIT 
    END DO

END PROGRAM Temperature_Conversion_2
