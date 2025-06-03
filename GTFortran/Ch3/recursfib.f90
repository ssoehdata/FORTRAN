! This example illustrates use of recursion where an iterative
! program would do as well. It is also an example of where
! use of recursion results in poor runtime.



recursive function fibonacci(n) result(fibonacci_result) 

    integer, intent(in) :: n 
    integer :: fibonacci_result 

    if (n <= 2) then
        fibonacci_result = 1 
    else 
        fibonacci_result = fibonacci(n -1) + fibonacci(n-2)
    end if 

end function fibonacci 
