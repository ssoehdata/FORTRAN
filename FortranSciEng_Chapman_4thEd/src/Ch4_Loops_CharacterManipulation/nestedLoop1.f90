! Example  from 4.1.6

PROGRAM nested_loops 
    INTEGER :: i, j, product 
    DO i = 1, 3
        DO j = 1, 3 
            product = i * j 
            WRITE(*,*) i, ' * ', j, ' = ', product 
        END DO 
    END DO 
END PROGRAM nested_loops 
