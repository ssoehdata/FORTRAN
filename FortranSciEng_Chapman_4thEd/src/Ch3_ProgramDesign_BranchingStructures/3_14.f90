! Example 3-14
PROGRAM day_of_week 

!   Purpose:
!       This program displays the day of the week corresponding to
!       a input integer value.

    IMPLICIT NONE 

 !  Data dicitionary: declare variable types, definitions, & units
    CHARACTER(len=11) :: c_day      ! Character string containing day
    INTEGER           :: i_day      ! Integer day of week 

 ! Prompt the user for the numberic day of the week
    WRITE (*,*) 'Enter the day of the week (1-7): ' 
    READ  (*,*) i_day 

 ! Get the corresponding day of the week. 
    SELECT CASE (i_day)
    CASE (1) 
        c_day = 'Sunday' 
    CASE (2) 
        c_day = 'Monday'
    CASE (3) 
        c_day = 'Tuesday' 
    CASE (4) 
        c_day = 'Wednesday' 
    CASE (5)
        c_day = 'Thursday' 
    CASE (6)
        c_day = 'Friday'
    CASE (7)
        c_day = 'Saturday' 
    CASE DEFAULT
        c_day = 'Invalid day'
    END SELECT    
             
    ! Write the resulting day
    WRITE (*,*) 'Day = ', c_day 

 END PROGRAM day_of_week 

