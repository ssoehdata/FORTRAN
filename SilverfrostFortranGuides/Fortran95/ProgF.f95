PROGRAM F
    IMPLICIT NONE 
    INTEGER mark 
1   PRINT "(a\)" , "Enter an exam mark (0...100):"
    READ *, mark
    IF(mark <0 .OR. mark > 100) THEN 
      PRINT *, "Error: Value out of range" 
    GOTO 1
    ENDIF
    PRINT *
    IF(mark<40)THEN 
      PRINT *, "Failed"
    ELSEIF(mark<50)THEN 
    PRINT*, "Grade D"
    ELSEIF(mark<60)THEN
        PRINT *, "GRADE C"
    ELSEIF(mark<70) THEN 
        PRINT *, "Grade B"
    ELSE
      PRINT *, "Grade A" 
    ENDIF 
ENDPROGRAM F 
