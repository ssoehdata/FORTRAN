! Example of passing variiables 

program series 

    implicit none 
    integer, parameter :: n = 100 
    print *, series_sum(n+300, 2*n+500, 100.0, 0.1)

    !alterate statement produces the same result:

    !print *, series_sum(d=0.1, m=400, n=700, s=100.0)

    ! i.e., the order of arguments does not matter, but it
    ! is necessary to know the names of the dummy arguments
    
    ! it is also possible to call the function using keywords
    ! for some arguments and not for others: 

     !print *, series_sum(400, 700, d=0.1, s=100.0)

contains 

function series_sum(m, n, s, d)  result(series_sum_result)

    integer, intent(in) :: m, n 
    real, intent(in)    :: s, d 
    real :: series_sum_result
    integer  ::  i 

    series_sum_result = 0 
    do i = m, n 
        series_sum_result = series_sum_result + s + i * d 
    end do 

end function series_sum 

end program series 

