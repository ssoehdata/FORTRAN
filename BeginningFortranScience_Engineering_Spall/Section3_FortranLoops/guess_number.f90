!   program to guess random numbers
    PROGRAM guess_number
    IMPLICIT NONE
    REAL :: r
    INTEGER :: number,guess,istat
  
    PRINT*
	CALL RANDOM_SEED()
	CALL RANDOM_NUMBER(r)
	number=NINT(r*10.)

print*,number  !statement for debugging

    loop:DO
	WRITE(*,'(a)',ADVANCE='NO')'Enter an integer guess between 0 and 10:  '
	READ(*,*,iostat=istat)guess

	outer_if : IF (istat/=0) THEN !not an integer number
  		CYCLE loop

	ELSE   !valid integer number
	     IF(guess <0 .OR. guess>10)THEN  !guess not between 0 and 10
		CYCLE loop

	     ELSE IF(guess == number)THEN
                PRINT*,'Correct Guess'
		EXIT loop
	     ELSE
		PRINT*,'Incorrect Guess, Try Again'
	     END IF
	END IF outer_if
     END DO loop

     END PROGRAM guess_number