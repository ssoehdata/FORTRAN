! Program that reads 3 pollution levels, calculates 
! a pollution  index as their integer averagem and then 
! dislplays an appropriate air-quality message. 
! Identifiers used are: 
!   Level)1, Level_2, Level_3 : the thre pollution levels 
!   Cutoff: : a cutoff value that distinguishes between hazardous
!   and safe conditions (constant)
!   Index   : the integer average of the pollution levels 
!
! Input: The three pollution levels 
! Constant: The cutoff value (parts per million)
! Output:   The pollution index and a "safe condition" 
! message if this index is less thant the cutoff value, 
! otherwise a "hazardous condition" message


PROGRAM Pollution 
    IMPLICIT NONE 
    INTEGER :: Level_1, Level_2, Level_3, Index 
    INTEGER, PARAMETER :: Cutoff = 50 

    ! Get the 3 pollution readings 
    PRINT *, "Enter 3 pollution readings (parts per million):"
    READ *, Level_1, Level_2, Level_3

    ! Calculate the pollution index 
    Index = (Level_1 +  Level_2 + Level_3) / 3 
    
    ! Check if the pollution index is less than the cutoff and 
    ! display an appropriate air-quality message 
    IF (Index < Cutoff) THEN 
        PRINT *, "Safe Condition"
    ELSE  
        PRINT *, "Hazardous Condition"
    END IF 
END PROGRAM Pollution 