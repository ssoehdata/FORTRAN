! Figure 4-4 
!   This version avoids the divide by zero problem in
!   the stats_1 program
!
PROGRAM stats_2

!   Purpsose:
!       To calculate mean and std. deviation of an input 
!       data set containing an arbitrary number of input values. 

    IMPLICIT NONE 
 
 ! Data dictionary: declare variable types, definitions, & units
    INTEGER :: n = 0 
    REAL    :: std_dev = 0.
    REAL    :: sum_x   = 0.
    REAL    :: sum_x2  = 0.
    REAL    :: x = 0.
    REAL    :: x_bar
  
! While loop to read input values.
    DO 
        ! Read in next value 
        WRITE (*,*) 'Enter a number: '
        READ  (*,*) x
        WRITE (*,*) 'The number you entered is: ', x
    
        ! Test for loop exit 
        IF ( x < 0 ) EXIT 
        ! Otherwise, accumulate sums.
        n           = n +  1 
        sum_x       = sum_x + x 
        sum_x2      = sum_x2 + x**2 
    END DO
    
    ! Check to see if we have enough input data.
    IF ( n < 2 ) THEN   ! Insufficient inormation 
        
        WRITE (*,*) 'At least 2 values must be entered '

    ELSE                ! There is enough information, so 
                        ! calculate the mean and standard deviation 

         x_bar      = sum_x / real(n) 
         std_dev    = sqrt( (real(n) * sum_x2  - sum_x**2) / (real(n)*real(n-1))) 

         ! Tell user.
         WRITE  (*,*) 'The mean of this data set is: ', x_bar 
         WRITE  (*,*) 'The standard deviation is:    ', std_dev 
         WRITE  (*,*) 'The number of data points is: ', n 
    END IF 

END PROGRAM stats_2    




