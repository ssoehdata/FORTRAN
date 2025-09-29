* Variant to comput.f program 
        PROGRAM COMPUT 
* This program computes the average of
* a set of exmperimental data values. 
*
        INTEGER COUNT 
        REAL SUM, X, AVERG 
        LOGICAL DONE 
* 
        SUM = 0.0 
        COUNT = 0
        DONE  = .FALSE. 
*
    1   IF (.NOT.DONE) THEN 
            READ *, X 
            IF (X.EQ.0.0) THEN 
                DONE = .TRUE. 
            ELSE 
                SUM = SUM + X 
                COUNT = COUNT + 1 
            END IF 
            GO TO 1 
        END IF
*
        AVERG = SUM/REAL(COUNT)
* 
        PRINT 5, AVERG 
    5   FORMAT (1X, 'THE AVERAGE IS ',F5.2)
*
        END 

        

* NOTES: DONE specifies when we have reached the end of the data. 
*        This version initializes the logical variable to value .FALSE. 
*        when we find the value that indicates the end of the data, we
*        change the value of the logical variable to .TRUE. 
*        To end the program after entering values, enter '0' .