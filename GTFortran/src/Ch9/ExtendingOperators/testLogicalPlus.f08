 program test_logical_plus 
                
        use logical_plus_module 
        implicit none 
        
        print *
        print *, .false. + .false. 
        print *, .true. + .true. 
        print *, (2.2 > 5.5) + (3.3 > 1.1)    ! N.B.: the () are needed because 
                                              ! + has as higher precedence than >.

        print *, (2.2 > 5.5) .or. (3.3 > 1.1) ! Here the () are not required since
                                              ! .or. has lower precedence than >.
        print *
end program test_logical_plus 
