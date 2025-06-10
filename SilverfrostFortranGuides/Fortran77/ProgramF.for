      PROGRAM F
      INTEGER mark 
 1    PRINT '(a\)', 'Enter an examination mark (0..100):'
      READ *, mark 
      IF (mark.LT.0 .OR. mark.GT.100) THEN 
          PRINT *, 'Error: Value out of range' 
          GOTO 1 
      ENDIF 
      PRINT *
      IF(mark.LT.40) THEN 
        PRINT *, 'Failed' 
      ELSEIF(mark.LT.50) THEN 
        PRINT *, 'Grade D'
      ELSEIF(mark.LT.60) THEN 
        PRINT *, 'Grade C' 
      ELSEIF(mark.LT.70) THEN
        PRINT *, 'Grade B' 
      ELSE
        PRINT *, 'Grade A'
      ENDIF 
      END 
      
C  Notes: Label "1" on line 3 is for the GOTO statement (an unconditional 'jump to' statement) on line 7. Althjough
C      in this instance, the GOTO only executes when the value is out of range (thus here a condition is imposed).