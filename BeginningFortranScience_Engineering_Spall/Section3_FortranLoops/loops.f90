! Program to demonstrate while loops 
PROGRAM guess_number
        IMPLICIT NONE 

        REAL :: r
        INTEGER :: number, guess, istat 
        PRINT *
        CALL RANDOM_SEED() 
        CALL RANDOM_NUMBER(r) 
        number=NINT(r*10.)

 PRINT*,number ! Statement for debugging 
 
    LOOP:DO 
    WRITE(*,'(a)',ADVANCE='NO') 'Enter an integer between 0 and 10: '
    READ(*,*, iostat=istat)guess
    
    OUTER_IF : IF (istat /=0) THEN ! not an integer number 
        CYCLE LOOP 
        
    ELSE  !valid integer number 
            IF(guess <0 .OR. guess >10) THEN 
            CYCLE LOOP 
            
            ELSE IF(guess == number) THEN 
                PRINT*, 'Correct Guess' 
            EXIT LOOP 
            ELSE 
                PRINT*, 'Incorrect Guess, Try Again' 
            END IF 
    END IF OUTER_IF 
    END DO LOOP 

END PROGRAM guess_number 



