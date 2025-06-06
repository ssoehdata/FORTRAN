program quadratic_equation_solver_2
! calculates and prints the roots
! of a quadratic equation

    implicit none
!variables:
! a, b, c: coefficients
! subexpression: value common to both roots
! x1, x2: roots

    real :: a, b, c, x1, x2, sub_expression

! Read the coefficients
    print *, "Enter a, the coefficient of x **2"
    read * , a
    print *, "Enter b, the coefficient of x"
    print * , b
    print * , "Enter c, the constant term"
    read *, c

!calculate the roots by the quadratic formula
    sub_expression = sqrt (b ** 2 - 4 * a * c)
    x1 = (-b + sub_expression) / (2 * a)
    x2 = (-b - sub_expression) / (2 * a)

!Print the roots
    print *, "The roots are"
    print *, "x1 = ", x1
    print *, "x2 = ", x2
end program quadratic_equation_solver_2