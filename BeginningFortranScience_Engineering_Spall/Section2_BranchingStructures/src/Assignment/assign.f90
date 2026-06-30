PROGRAM paint_spray
        IMPLICIT NONE 
        
        integer :: temp, wind_speed
        real    :: rel_humidity
        

        PRINT*,'Enter the wind_speed (m/s)'
        READ(*,*) wind_speed 
        PRINT*,'Enter the percentage relative humidity (m/s)'
        READ(*,*) rel_humidity 
        PRINT*,'Enter the temperature (deg. C)'
        READ(*,*) temp

        IF (rel_humidity .GE. 85) THEN
                PRINT*, 'Humidity is too high to paint'
        ELSE IF (rel_humidity .LT. 85) THEN 
               PRINT*, 'Humidity levels acceptable'
        END IF       
              
        IF (wind_speed .LT. 3) THEN 
                PRINT*, 'Wind speed conditions acceptable for painting'
        ELSE
                PRINT*, 'Current wind speed conditions do not allow for painting'         
        END IF
        
        IF (temp .GE. 10 .AND.  temp .LE. 30) THEN 
                PRINT*, 'Temperature conditions suitable for painting'
        ELSE 
                 PRINT*, 'Current temperature conditions do not allow for painting'  
        END IF

END PROGRAM paint_spray
