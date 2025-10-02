        PROGRAM COMPUT
* This program computes and prints the average 
* of a set of experimental data values. 
*
        INTEGER COUNT 
        REAL SUM, X, AVERG 
*
        SUM = 0.0 
        COUNT = 0
*       
        PRINT *, 'Enter values to average, enter 0 to quit.'
        READ*, X 
    1  IF (X .NE.0.0) THEN 
            SUM = SUM + X
            COUNT = COUNT + 1 
            READ*, X 
            GO TO 1 
        END IF
*
        AVERG = SUM/REAL(COUNT)
* 
        PRINT 5, AVERG 
    5   FORMAT (1X, 'The Average is: ',F5.2)
*
        END 

