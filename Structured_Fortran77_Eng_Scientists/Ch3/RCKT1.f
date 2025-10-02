        PROGRAM RCKT1
* This program simulates a rocket flight for up to 100 seconds
* A table contains height values at increments of 2 seconds until
* the rocket is within 50 feet of the ground. Within 50 feet 
* of the ground, the height values are computed every 0.05 seconds. 
*       
        REAL TIME, HEIGHT 
*       
        TIME = 0.0 
        HEIGHT = 60.0 
*
        PRINT 5 
  5     FORMAT (1X,'TIME (S)    HEIGHT (FT)')
        PRINT *
*
  10    IF (HEIGHT.GT.0.0.AND.TIME.LE.100.0) THEN 
            HEIGHT = 60.0 + 2.13*TIME**2 - 0.0013*TIME**4 
     +                + 0.000034*TIME**4.751 
            PRINT 15, TIME, HEIGHT 
   15       FORMAT (1X, F7.4,8X,F9.4)
            IF (HEIGHT.LT.50.0) THEN 
                 TIME = TIME + 0.5
            ELSE 
                TIME = TIME + 2.0 
            END IF
            GO TO 10 
        END IF
*
        END 
        
       