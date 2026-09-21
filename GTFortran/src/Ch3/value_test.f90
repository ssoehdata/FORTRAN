program value_test 
    implicit none 

    real :: x = 1.1 
    call s(x)
    print *, x ! produces 1.1 

contains 

subroutine s(d)
    real, value :: d 
    d = 2*d 
    print *, d ! produces 2.2 
end subroutine

end program value_test 