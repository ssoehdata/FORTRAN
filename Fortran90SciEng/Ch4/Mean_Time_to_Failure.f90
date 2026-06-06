PROGRAM Mean_Time_to_Failure 
! =========================================================================
! Program to read a list of failure times, count them, and find the 
! mean time to failure. Values are read until and end-of-date flag 
! is read. Identifiers used are: 
! 	FailureTime	: The current failure time read 
! 	EndDataFlag	: a constant -- the end-of-data flag 
!	NumTimes	: the number of failure-time readings 
! 	Sum		: sum of failure times 
! 	MeanFailureTime : the mean time to failure 
!
! Input:  A list of failure times 
! Output: Number of failure times read and their mean or a message 
! 	  indicating that no failure times were entered
! ========================================================================== 

	IMPLICIT NONE 
	INTEGER :: NumTimes 
	REAL 	:: FailureTime, Sum, MeanFailureTime
	REAL, PARAMETER :: EndDataFlag = -1.0 

! Initialize Sum and NumTimes and give instructions to user 
	SUM = 0.0
	NumTimes = 0 
	PRINT *, "Enter failure time of", EndDataFlag, "to stop." 
	
	! Repeat the following: 
	DO 
		PRINT *, "Enter failure time: " 
		READ *, FailureTime

		! If end-of-data , terminate repetition
		IF (FailureTime == EndDataFlag) EXIT 
	
		! Otherwise , continue with the following: 
		NumTimes = NumTimes + 1
		Sum = Sum + FailureTime 
    
	END DO 

        ! Calculate and display mean time to failure 
	IF (NumTimes /= 0) THEN 
		MeanFailureTime = Sum / NumTimes
	PRINT * 
	PRINT *, "Number of failure-time readings:", NumTimes
	PRINT *	
    PRINT *, "Mean time to failure:", MeanFailureTime 
    ELSE 
        PRINT *, "No failure times were entered."
    END IF 
    
    END PROGRAM Mean_Time_to_Failure

