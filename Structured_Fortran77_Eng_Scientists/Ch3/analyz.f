        PROGRAM ANALYZ
* This program determines maximum and minimum values 
* and the range of values for a set of data values. 
* 
        REAL X, MAX, MIN, RANGE 
        READ *, X 
        MAX = X
        MIN = X 
* 
        READ*, X
  1     IF (X.NE. 0.0)THEN 
            IF (X.GT.MAX) MAX = X 
            IF (X.LT.MIN) MIN = X 
            READ*, X 
            GO TO 1 
        END IF 
*
        RANGE = MAX - MIN
*
        PRINT 5, MAX, MIN, RANGE 
   5    FORMAT (1X,'MAXIMUM DATA VALUE = ',F8.2/
     +         1X,'MINIMUM DATA VALUE = ',F8.2/
     +         1X,'RANGE OF VALUES =    ',F8.2)
* 
        END 
