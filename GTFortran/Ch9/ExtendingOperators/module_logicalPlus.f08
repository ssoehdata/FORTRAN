! Extending Operators 
!----------------------

! Suppose you wish to use + in place of .or. , * in place of .and. 
! and - inplace of .not. to manipulate logical values. 
! This can be done by extending these operators.

! A function used to extend an operator must have one or two arguments
! depending on the operator being extended, and must be intent(in)

! This method can not be used to change the meaning of an existing
! operator applied to one or more intrinsic types for which it is
! defined, however a new operator may be used for this purpose.

module logical_plus_module 

    implicit none
    public  :: operator(+)
    private :: log_plus_log

    interface operator(+) 
        procedure log_plus_log
    end interface 

    contains 

    function log_plus_log(x, y) & 
            result(log_plus_log_result) 

            logical, intent(in) :: x, y 
            logical :: log_plus_log_result 

            log_plus_log_result = x .or. y 

    end function log_plus_log 

 end module logical_plus_module 




