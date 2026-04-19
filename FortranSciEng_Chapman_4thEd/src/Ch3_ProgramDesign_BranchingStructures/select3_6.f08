! Example 3-15 
PROGRAM weekday_weekend 
! Purpose: 
!   This program accepts a character string containing
!   a day of the week, and responds with a message
!   specifiying whether the day is a weekday or falls
!   on the weekend. 
! 
IMPLICIT NONE 

! Declare the variables 
CHARACTER(len=11) :: c_day  ! Character string containing day
CHARACTER(len=11) :: c_type  ! Character string with day type 

! Prompt user for day of week 
WRITE(*,*) 'ENTER THE NAME OF THE DAY: '
READ(*,*)  c_day 

! Get the corresponding day of the week 
SELECT CASE (c_day)
CASE ('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday')
    c_type = 'Weekday' 
CASE ('Saturday', 'Sunday')
    c_type = 'Weekend' 
CASE DEFAULT 
    c_type = 'Invalid day'
END SELECT 

! Write the resulting day type 
WRITE(*,*) 'Day Type = ', c_type 
END PROGRAM weekday_weekend 
