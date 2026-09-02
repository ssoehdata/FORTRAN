PROGRAM test_allocatable_arguments 

    USE test_module 
    IMPLICIT NONE 

    REAL,ALLOCATABLE, DIMENSION(:) :: a
    INTEGER :: istat 

    ALLOCATE( a(6), STAT=istat ) 

    a = [1., 2., 3., 4., 5., 6. ] 

    ! Display a before call 
    PRINT *
    WRITE(*, '(A,6F4.1)') 'Main: Array a before call = ', a

    ! Call subroutine 
    CALL test_alloc(a)
   
    ! Display a after call 
    WRITE(*, '(A,6F4.1)') 'Main: Array a after call = ', a
    PRINT *

    END PROGRAM test_allocatable_arguments 


     
    
