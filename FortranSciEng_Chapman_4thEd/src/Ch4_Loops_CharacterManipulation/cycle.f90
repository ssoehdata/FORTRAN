! Example 4.1.4 The CYCLE and EXIT Statements:

! Two additional statements that can be used to control 
! WHILE LOOP operation and counting of DO loops:
! CYCLE and EXIT

! CYCLE:  when executed in the body of a DO loop, execution 
!   of the current iteration of the loop will stop, and control 
!   is returned to to the top of the loop. The loop index will
!   be incremented, and execution will resume again if the 
!   index has not reached its limit. 

! An unamed CYCLE:
!   statement always causes the INNERMOST
! loop containing the statement to cycle.
! A named CYCLE: 
!   causes the named loop to cycle, even if it is not the innermost loop.

! EXIT:
! An unamed EXIT: - always causes the innermost loop containing the 
!                 the statement to exit. 
!
! A named EXIT:   - causes the named loop to exit, even if it isn't the 
!                 innermost loop. 
!********************************************************************************
PROGRAM test_cycle 
INTEGER :: i 
DO i = 1, 5 
    IF ( i == 3) CYCLE 
    WRITE (*,*) i 
END DO
WRITE (*,*) 'End of loop!' 
END PROGRAM test_cycle 


!*******************************************************************************

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
!    IF ( i == 3) EXIT
!    WRITE (*,*) i 
! END DO
! WRITE (*,*) 'End of loop!' 
! END PROGRAM test_cycle 