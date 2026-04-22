! Example 4.1.4 The CYCLE and EXIT Statements:

! Two additional statements that can be used to control 
! WHILE LOOP operation and counting of DO loops:
! CYCLE and EXIT

! CYCLE when executed in the body of a DO loop, execution 
! of the current iteration of the loop will stop, and control 
! is returned to to the top of the loop. The loop index will
! be incremented, and execution will resume again if the 
! index has not reached its limit. 

PROGRAM test_cycle 
INTEGER :: i 
DO i = 1, 5 
    IF ( i == 3) CYCLE 
    WRITE (*,*) i 
END DO
WRITE (*,*) 'End of loop!' 
END PROGRAM test_cycle 

! If the EXIT statement is executed within the body of the loop, 
! the loop stops and control is transferred to the first executable
! statement after the loop. 

! The following example when executed prints out: 
! 1
! 2
! End of loop! 

! PROGRAM test_cycle 
! INTEGER :: i 
! DO i = 1, 5 
!    IF ( i == 3) CYCLE 
!    WRITE (*,*) i 
! END DO
! WRITE (*,*) 'End of loop!' 
! END PROGRAM test_cycle 