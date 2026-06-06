PROGRAM Multiplication_Table 
! -----------------------------------------------------------------------
! Program to calculate and display a list of products of two numbers
! Variables used are:
! M, N              :  the two numbers being multiplied 
! Product           :  their product 
! Last_M, Last_N    :  the last value of M and N 
!
! Input:  Last_M and Last_N, the largest numbers to be multiplied
! Output: List of products M + N 
! ------------------------------------------------------------------------

    IMPLICIT NONE 
    INTEGER     :: M, N, Last_M, Last_N, Product 

    PRINT *, "Enter the last values of the two numbers:"
    READ  *, Last_M, Last_N
    PRINT *, "          M             N            M * N"
    PRINT *, "      ===================================="

    DO M = 1, Last_M
        DO N = 1, Last_N
            Product = M * N 
            PRINT *, M, " ", N, "  ", Product 
        END DO 
    END DO 
    PRINT *
END PROGRAM Multiplication_Table

