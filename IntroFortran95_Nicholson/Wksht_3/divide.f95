! Excercise 3.1 

program divide 
    implicit none 
    integer :: x 
    real :: y 
    x = 1 
    y = x/3         ! note that both 3 and x are integers
    print *, y 
end program divide 


! This returns 0.00000 
! FORTRAN evaluates the r.h. side of the assignment first using integer arithmetic,
! because both x and 3 are data type integer. 1 divided by 3 cannot be stored as 
! an integer, and so the value returned is 0. The result 0, is then 
! converted to a real number and then assigned to y, thus returning 0.00000 

! Replacing x =1 with x = 10 will yield 3.0000 as the output. 
