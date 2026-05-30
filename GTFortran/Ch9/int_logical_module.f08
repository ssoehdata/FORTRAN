! Extending Assignment:
! *********************
! Operators can be defined and intrinsics can be 
! extended.

! -------------------------------------------------------------------------
! A subrotine that serves to define an assigment must have exactly 
! two arguments: 1) the first arg must be intent(out)  or intent(in out)
!                2) second arg must be intent(in)
! --------------------------------------------------------------------------

module int_logical_module 

        implicit none 
        public  :: assignment(=)          ! extended assignment only available when
                                          ! the module is used.
        private  :: integer_gets_logical  ! indicates the procedure is not available
                                          ! outside of module.

        interface assignment(=)
            procedure integer_gets_logical 
        end interface

    contains 

subroutine integer_gets_logical(i, l)    

    integer, intent(out) :: i
    logical, intent(in)  :: l

      if (l) then 
        i = 1
      else 
        i = 0 
      end if 

end subroutine integer_gets_logical 

end module int_logical_module 
