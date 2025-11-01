!demonstrates use of intrinsic functions matmul,dot_product,transpose,
! maxval, minval, and sum.

PROGRAM matrixmul 
    !allocation of array 
    REAL, ALLOCATABLE, DIMENSION (:,:) :: ra1, ra2, ra3
    INTEGER :: SIZE 
    ! initialize the arrays 
    PRINT *, 'Shows array manipulation using SQUARE arrays.'
    PRINT *, 'Allocate the space for the array at run time.'
    PRINT *, 'Enter the size of your array'
    READ *, SIZE
    ALLOCATE(ra1(SIZE,SIZE),ra2(SIZE,SIZE),ra3(SIZE,SIZE))
    PRINT*, 'Enter matrix elements for ra1 row by row'
    CALL fill_array(SIZE,ra1)
    PRINT*, 'Enter matrix elements for ra2 row by row'
    CALL fill_array(SIZE,ra2)
    !Echo the arrays 
    PRINT *,'ra1'
    CALL outputra(SIZE,ra1)
    PRINT *, 'ra2'
    CALL outputra(SIZE,ra2)    
    ! Demonstrate the use of matmul and transpose intrinsic !functions 
    ra3=matmul(ra1,ra2)
    PRINT*, 'Matmul of ra1 and ra2'
    CALL outputra(SIZE,ra3)
    ra3=transpose(ra1)
    PRINT *, 'Transpose of ra1'
    CALL outputra(SIZE,ra3)
    deallocate(ra1,ra2,ra3)
END PROGRAM matrixmul

!-----------------------------------------------------------------

SUBROUTINE outputra(SIZE,ra)
    IMPLICIT NONE 
    ! will output a real square array nicely 
    INTEGER                    :: SIZE,ROW,COL 
    REAL,DIMENSION(SIZE,SIZE)  :: ra 
    CHARACTER                  :: reply*1
    DO ROW = 1, SIZE 
        WRITE(*,10) (ra(ROW,COL),col=1,SIZE)
    10 FORMAT(100F10.2)
    ! As we don't know how many numbers are to be output,
    ! specify  ! more than we need - the rest are ignored 
    END DO 
    PRINT*,'_______________________________________________________'
    PRINT*, 'Hit a key and press enter to continue'
    READ*, REPLY 
END SUBROUTINE outputra 

!-----------------------------------------------------------------

SUBROUTINE fill_array(SIZE,ra)
    IMPLICIT NONE 
    ! fills the array by prompting from keyboard 
    INTEGER         ::  ROW,COL,SIZE 
    REAL            ::  NUM 
    REAL, DIMENSION(SIZE,SIZE)  :: ra 
    DO row=1,SIZE 
        DO col=1,SIZE 
            PRINT*, ROW,COL
            READ *, NUM 
            ra(ROW,COL)=NUM 
        END DO
    END DO 
END SUBROUTINE fill_array 

