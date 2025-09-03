! reads number from input and returns if value 
! is > 0 but < 1 or is > 1 but < 10,
! or is outside both of these ranges 

PROGRAM boundcheck 
    IMPLICIT NONE 
    REAL :: num 
    
    PRINT *, 'Enter a number'
    READ *, num   
    IF ((num .GT. 0) .AND. (num < 1 )) THEN 
        PRINT *, 'Value is positive, but less than 1'    
    END IF
    IF (num > 1 .AND. num < 10) THEN 
        PRINT *, 'Value is positive and less than 10' 
    END IF  
    IF (num < 0  .OR. num > 10) THEN 
        PRINT *, 'Value is out of bounds'
    END IF    
    
END PROGRAM boundcheck
