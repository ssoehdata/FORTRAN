PROGRAM interface_example 

    ! Declare interface to subroutine "sort" 
    INTERFACE 
        SUBROUTINE sort(a, n) 
            IMPLICIT NONE 
            REAL, DIMENSION(:), INTENT(INOUT) :: a 
            INTEGER, INTENT(IN) :: n 
            END SUBROUTINE sort 
    END INTERFACE 

    ! Data dictionary: declare local variable types & definitions
    REAL, DIMENSION(6) :: array = [ 1., 5., 3., 2., 6., 4. ] 
    INTEGER :: nvals = 6

    ! Call "sort" to sort data into ascending order 
    CALL sort ( N=vals, A=array)

    ! Write out sorted array 
    WRITE (*,*) array 

END PROGRAM interface_example 
