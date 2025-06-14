      PROGRAM G 
      INTEGER mark 
      LOGICAL ReadAgain 
      ReadAgain=.TRUE. 
      DO WHILE(ReadAgain) 
        PRINT '(a\)', 'Enter an examination mark (0..100):' 
        READ *, mark 
        ReadAgain=(mark.LT.0 .OR. mark.GT.100) 
        IF(ReadAgain) PRINT  *, 'Error: Value out of range' 
        END DO 
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
       