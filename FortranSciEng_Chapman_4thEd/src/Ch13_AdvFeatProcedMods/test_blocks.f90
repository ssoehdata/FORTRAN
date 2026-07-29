! Listing 13_3
PROGRAM test_blocks
    IMPLICIT NONE 

    INTEGER :: i, j, k 

    i = 1
    j = 2
    k = 3
    ! Variables before the block 
    WRITE (*,*) 'Before block: i, j, k = ', i, j, k 

    ! Declare block 
    test_block: BLOCK 
        INTEGER :: j 

        WRITE(*,*) 'In block before DO LOOP.' 

        DO j = 1, 10 

            ! Variables in the block 
            WRITE(*,*) 'In block: i, j, k = ', i, j, k 
        
            IF ( j > 2 ) EXIT test_block
        END DO 

        WRITE (*,*) 'In block after DO LOOP.'  ! N.B.: This line is never
                                               ! executed as control flow jumps
                                               ! to the first statement after the
                                               ! block when EXIT statement is executed.

    END BLOCK test_block 

    ! Variables after the block 
    WRITE (*,*) 'After block: i, j, k = ', i, j, k 

    END PROGRAM test_blocks 





