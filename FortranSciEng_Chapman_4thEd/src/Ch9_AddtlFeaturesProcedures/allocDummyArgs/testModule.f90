! Figure 9-7 
MODULE test_module 
! Purpose:
!       To illustrate the use of allocatable arguments
!       in a subroutine.
CONTAINS

        SUBROUTINE test_alloc(array)
                IMPLICIT NONE 
                REAL,DIMENSION(:),ALLOCATABLE,INTENT(INOUT) :: array
    
         ! Local variables
         INTEGER :: i 
         INTEGER :: istat

         !Get status of this array
         IF ( ALLOCATED(array) ) THEN 
             WRITE(*, '(A)') 'Sub: the array is allocated'
             WRITE(*, '(A,6F4.1)') 'Sub: Array on entry = ', array
         ELSE 
             WRITE(*,*) 'Sub: the array is not allocated'
         END IF 

         ! Deallocate the array 
         IF ( ALLOCATED(array) ) THEN 
             DEALLOCATE( array, STAT=istat )
         END IF

        ! Reallocate as a 5 element vector
        ALLOCATE(array(5), STAT=istat ) 

         ! Save data 
         DO i = 1, 5
            array(i) = 6 - i
         END DO 

         ! Display contents of array a on exit 
         WRITE(*, '(A,6F4.1)') 'Sub: Array on exit = ', array

         ! Return to caller 
         END SUBROUTINE test_alloc

 END MODULE test_module 
