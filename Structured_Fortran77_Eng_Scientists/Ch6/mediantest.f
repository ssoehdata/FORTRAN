*--------------------------------------
*
* This program is written to test the median function 
* 
        PROGRAM TEST
*
        INTEGER N,I 
        REAL X(10), MEDIAN 
*
        PRINT*, 'ENTER NUMBER OF VALUES FOR ARRAY (<11)'
        READ*,N 
        PRINT*, 'NOW ENTER SORTED ARRAY VALUES'
        READ*, (X(I),I=1,N)
        PRINT 5, MEDIAN(X,N)
    5   FORMAT (1X,'MEDIAN = ',F7.2)
*
        END 
*-------------------------------------------------
        REAL FUNCTION MEDIAN(X,N)
*
* This function determines the median value in a sorted 
* list of real numbers. 
*
        INTEGER N 
        REAL X(N)
*
        IF (MOD(N,2).NE.0) THEN 
            MEDIAN = X(N/2+1)
        ELSE 
            MEDIAN = (X(N/2) + X(N/2+1))/2.0 
        END IF 
* 
        RETURN 
        END 
    