! demonstrate CYCLE and EXIT statements 
PROGRAM cycle_exit 
        IMPLICIT NONE 
        
        INTEGER :: i
        DO i = 1, 20 
                IF(i > 5 .AND. i <10) CYCLE 
                IF(i .EQ. 15) EXIT 
                PRINT *, 'i=: ',i
        END DO 
END PROGRAM cycle_exit 


