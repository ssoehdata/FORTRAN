! Fig 9-3
! Subroutine to illustrate the use of assumed-shape arrays

MODULE test_module 

CONTAINS
        SUBROUTINE test_array(array)
        IMPLICIT NONE 
        REAL, DIMENSION(:,:) :: array  ! Assumed shape array
        INTEGER :: i1, i2
        INTEGER :: j1, j2
        i1 = LBOUND(array,1)
        i2 = UBOUND(array,1)
        j1 = LBOUND(array,2)
        j2 = UBOUND(array,2)
        WRITE(*,100) i1, i2, j1, j2 
        100 FORMAT('The bounds are: (',I2,':',I2,',' I2,':',I2,')')
        WRITE(*,110) SHAPE(array)
        110 FORMAT ('The shape is:       ',2I4)
        WRITE(*,120) SIZE(array)
        120 FORMAT('The size is:        ',I4)
        END SUBROUTINE test_array
  
 END MODULE test_module 
 
