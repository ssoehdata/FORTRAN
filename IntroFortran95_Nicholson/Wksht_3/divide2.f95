!################## Mixed data types #############################
program divide 
    implicit none 
    integer :: x 
    real :: y 
    x = 10 
    y = x/3 
    print *, y 
end program divide 


! compared to divide.f95, we replaced x =1 with x = 10. 
! This returns 3.00000
! Here Fortran keeps the integer part and discards the rest. 
!%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

! To solve this we need to signal to FORTRAN that we want it to calculate the r.h. side 
! of the expression using real arithmetic. 
! If we want to keep x as an integer data type,
! we could rewrite our expression as follows: 

!         y = x/3.0

! The presence of a real number on the r.h. side of the expression causes the r.h. side 
! of the expression to be evaluated using floating point arithmetic. 

!%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

! The problem is even more complicated in an expression such as: 
!    y=x*((2**i)/3)

! where x and y are real and i is an integer, FORTRAN computes the result in stages: 

! First it calculates (2**i)/3 and evaluates it as an integer number, 
!then multiplies the result by  x and evaluates it as real. 