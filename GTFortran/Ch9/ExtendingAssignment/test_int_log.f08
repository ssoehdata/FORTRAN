program test_int_logical 
    
    use int_logical_module 
    implicit none 
    integer :: i, j 

    i = .FALSE. 
    print *, i
    j = ( 5 < 7) .AND. (sin(0.3) < 1.0) 
    print *, j

end program test_int_logical


