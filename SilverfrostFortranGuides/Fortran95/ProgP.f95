! Bubble Sort example: 
!Demonstrates how to pass an array to a subprogram 
! It uses the SORT subroutine to perform a Bubble Sort 
PROGRAM P 
IMPLICIT NONE 
INTEGER :: LIST(10) =(/45,20,60,1,89,23,51,99,12,0/)
INTEGER i 
CALL Sort(list,10) 
PRINT "(10I4)", (list(i),i=1,10) 

CONTAINS 

SUBROUTINE Sort(array, items) 
    INTEGER,DIMENSION(:) :: array 
    INTEGER,INTENT(IN) :: items 
    INTEGER i 
    LOGICAL swap 
    swap = .TRUE.
    DO WHILE(swap) 
        swap =.FALSE. 
            DO i = 2, items 
                IF(Switch(array(i-1),array(i))) swap=.TRUE.
            END DO
    END DO
END SUBROUTINE Sort 

LOGICAL FUNCTION Switch(a,b) 
    INTEGER,INTENT(INOUT)::a,b 
    INTEGER t
    IF(a>b) THEN 
      t=a
      a=b
      b=t
      Switch=.TRUE.
    ELSE
      Switch=.FALSE.
    ENDIF 
END FUNCTION Switch 

END PROGRAM P
