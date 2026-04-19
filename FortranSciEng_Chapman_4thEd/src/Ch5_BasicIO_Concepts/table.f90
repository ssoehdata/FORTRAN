! Example 5-1 Figure 5-5 

PROGRAM table 
!
! Purpose:
!   To illustrate the use of formatted to WRITE statements.
!   This program generates a table containing the square roots,
!   squares, and cube roots of all integers between 1 and 10. 
!   The table includes a title and column headings. 
!
IMPLICIT NONE 

INTEGER :: cube          ! The cube of i 
INTEGER :: i             ! Index variable 
INTEGER :: square         ! The sauare of i 
REAL    :: square_root     ! The square root of i 

! Print the title of the table on a new page. 
WRITE(*, 100)
100 FORMAT (T3, 'Table fo Square Roots, Squares, and Cubes'/)

! Print the column headings after skipping one line.
WRITE(*,110)
110 FORMAT (T4, 'Number', T13, 'Square Root', T29, 'Square', T39,'Cube')
WRITE(*,120)
120 FORMAT (T4, '======', T13, '===========', T29, '======', T39, '====' / ) 

! Generate the required values, and print them out.
DO i = 1, 10 
    square_root = SQRT ( REAL(i))
    square = i**2 
    cube = i**3
    WRITE(*, 130) i, square_root, square, cube 
    130 FORMAT (1X, T4, I4, T13, F10.6, T27, I6, T37, I6)
END DO

END PROGRAM table