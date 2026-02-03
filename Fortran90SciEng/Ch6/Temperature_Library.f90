MODULE Temperature_Library
    IMPLICIT NONE 

CONTAINS 

    FUNCTION Fahr_to_Celsius(Temperature)

        REAL :: Fahr_to_Celsius 
        REAL, INTENT(IN) :: Temperature 

        Fahr_to_Celsius = (Temperature - 32.0) / 1.8 

    END FUNCTION Fahr_to_Celsius 


    FUNCTION Celsius_to_Fahr(Temperature) 

        REAL :: Celsius_to_Fahr 
        REAL, INTENT(IN) :: Temperature 

        Celsius_to_Fahr = 1.8 * Temperature + 32.0

    END FUNCTION Celsius_to_Fahr

END MODULE Temperature_Library 
