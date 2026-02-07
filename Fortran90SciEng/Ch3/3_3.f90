Program Pollution_3
    Implicit None 
    Integer :: Level_1, Level_2, Level_3, Index 
    Integer, PARAMETER :: LowCutoff = 25, HighCutoff = 50

    Print *, "Enter 3 pollution readings (ppm):"
    Read *, Level_1, Level_2, Level_3 

    Index = (Level_1 + Level_2 + Level_3) / 3 
    IF (Index < LowCutoff) THEN 
        Print *, "Good Condition"
    ELSE IF (Index < HighCutoff) THEN 
        Print *, "Fair Condition"
    ELSE 
        Print *, "Poor Condition"
    END IF 
End Program Pollution_3