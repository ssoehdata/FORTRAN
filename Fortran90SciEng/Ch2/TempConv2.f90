! Corrected version of Temperature Conversion that returns accurate conversions for C to F


 PROGRAM Temperature_Conversion_2 
        IMPLICIT NONE 
        REAL :: Celsius, Fahrenheit 

        !Obtain Celsius temp 
        PRINT *, "Enter temperature in Celsius"
        READ *, Celsius 

        ! Calculate corresponding Fahrenheit temp
        Fahrenheit = 1.8 * Celsius + 32.0 

        ! Display temperatures 
        PRINT *, Celsius, "degrees Celsius =", & 
                Fahrenheit, "degrees Fahrenheit"
 END PROGRAM Temperature_Conversion_2 
        













        
