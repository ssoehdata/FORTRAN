Program Pollution_3
    Implicit None 
    Integer :: Level_1, Level_2, Level_3, Index 
    Integer, Parameter :: LowCutoff = 25, HighCutoff = 50 

    Print *, "Enter 3 pollution  readings (parts per million):"
    Read *, Level_1, Level_2, Level_3 

    Index = (Level_1 + Level_2 + Level_3) / 3 

    SELECT CASE (Index )   
    CASE (:LowCutoff -1)     
        Print *, "Good Condition"
    CASE (LowCutoff : HighCutoff -1)
        Print *, "Fair Condition"
    CASE (HighCutoff:)
        Print *, "Poor Condition"
    END SELECT

End Program Pollution_3
