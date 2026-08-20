! Figure 16-7
! This module implements a timer class
module timer_class
    IMPLICIT NONE  
    
    INTEGER, PARAMETER :: DBL = SELECTED_REAL_KIND(p=14)
    !Type definition
   TYPE,PUBLIC :: timer   
      
    PRIVATE
    REAL(KIND=DBL) :: saved_time 
    
   CONTAINS
     ! Bound procedures
    PROCEDURE,PUBLIC :: start_timer => start_timer_sub
    PROCEDURE,PUBLIC :: elapsed_time => elapsed_time_fn
   
   END TYPE timer

   ! Restrict access to the actual subroutine names 
   PRIVATE :: start_timer_sub, elapsed_time_fn   
   
   CONTAINS
       SUBROUTINE start_timer_sub(this)
       !
       ! Subroutine to get and save the initial time
       !
       IMPLICIT NONE 
       ! Declare calling args
       CLASS(timer) :: this
       ! Declare local variables
       INTEGER,DIMENSION(8) :: value 

       CALL date_and_time ( VALUES=value )
       this%saved_time = 86400.D0 * value(3) + 3600.D0 * value(5) &
           + 60.D0 * value(6) + value(7) + 0.001D0 * value(8)
       END SUBROUTINE start_timer_sub

       REAL FUNCTION elapsed_time_fn(this)
           IMPLICIT NONE 

           CLASS(timer) :: this
           INTEGER,DIMENSION(8) :: value 
           REAL(KIND=DBL) :: current_time 

           CALL date_and_time ( VALUES=value )
           current_time = 86400.D0 * value(3) + 3600.D0 * value(5) &
               + 60.D0 * value(6) + value(7) + 0.001D0 * value(8)
           
           elapsed_time_fn = current_time - this%saved_time

           END FUNCTION elapsed_time_fn
END MODULE timer_class




