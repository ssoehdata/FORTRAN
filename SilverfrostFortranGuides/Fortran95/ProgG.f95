PROGRAM G 
    IMPLICIT NONE 
    INTEGER mark 
    LOGICAL ReadAgain 
    ReadAgain=.TRUE.
    DO WHILE(ReadAgain)
      PRINT "(a\)", "Enter an examination mark(0..100):"
      READ *, mark 
      ReadAgain=(mark<0 .OR. mark>100)
      IF(ReadAgain) PRINT *, "Error: Value out of range" 
    END DO 
    PRINT *
    SELECT CASE(mark) 
      CASE(0:39)
        PRINT *, "Failed"
      CASE(40:49)
        PRINT *, "Grade D" 
      CASE(50:59)
        PRINT *, "Grade C" 
      CASE(60:69)
        PRINT *, "Grade B" 
      CASE DEFAULT 
        PRINT*, "Grade A" 
     END SELECT 
END PROGRAM G 



! Case-Construct, provides and alternative to a multiple IF-Construct:
! Form: 

! SELECT CASE(expression) 
! CASE(selector 1) 
! statements 
! CASE(selector 2)
! statements 
! ...
! CASE DEFAULT
! statements 
! END SELECT 
