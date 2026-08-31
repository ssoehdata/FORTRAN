! Fig 9-4

SUBROUTINE running_average (x, avg, std_dev, nvals, reset )
! Purpose: 
!       To calculate the running averag, std deviation,
!       and number of data points as data values x are received.
!       If "reset" is .TRUE. , clear running sums and exit. 

IMPLICIT NONE 

REAL,INTENT(IN)     :: x
REAL,INTENT(OUT)    :: avg
REAL,INTENT(OUT)    :: std_dev
INTEGER,INTENT(OUT) :: nvals
LOGICAL,INTENT(IN)  :: reset

INTEGER,SAVE :: n 
REAL, SAVE   :: sum_x
REAL, SAVE   :: sum_x2

! If the reset flag is set, clear the running sums
! at this time.
calc_sums: IF ( reset ) THEN 
        n      = 0
        sum_x  = 0.
        sum_x2 = 0.
        avg    = 0.
        std_dev = 0.
        nvals  = 0
ELSE 
    ! Accumulate sums. 
    n  = n + 1
    sum_x = sum_x + x 
    sum_x2 = sum_x2 + x**2

    ! Calculate average
    avg = sum_x / REAL(n)

    ! Calculate std dev
    IF (n >= 2) THEN
        std_dev = SQRT( (REAL(n) * sum_x2 - sum_x**2) &
             / (REAL(n) * REAL(n-1)) )
    ELSE 
        std_dev = 0.
    END IF 

    ! Number of data points 
    nvals = n 

END IF calc_sums 

END SUBROUTINE running_average 


