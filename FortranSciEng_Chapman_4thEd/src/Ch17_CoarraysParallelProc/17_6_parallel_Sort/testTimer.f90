program test_timer

    USE timer_class
    IMPLICIT NONE 

    INTEGER :: i, j 
    INTEGER :: k 
    TYPE(timer) :: t 

    CALL t%start_timer()

    DO i = 1,100000
        DO j = 1, 100000
            k = i + j 
        END DO 
    END DO

    WRITE(*,'(A,F8.3,A)') 'Time = ', t%elapsed_time(), ' s'

    END PROGRAM test_timer

