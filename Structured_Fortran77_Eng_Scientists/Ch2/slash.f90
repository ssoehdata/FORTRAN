! testing the slash format operator 
! the / operator in a FORMAT statement specifies that the current
! buffer shoul dbe printed and a new one started. 

PROGRAM slash
    PRINT 5 
    5 FORMAT (1X,' TEST RESULTS'/1X,'TIME',5X,'HEIGHT')
! The above example separates the columns by 5 spaces
! and centers the heading over the column headings.

! Adding another slash in the example below will insert a 
! space in between the header and the column headings 
    PRINT 10
    10 FORMAT (1X,'TEST RESULTS'//1X,'TIME',5X,'HEIGHT')

END PROGRAM slash 