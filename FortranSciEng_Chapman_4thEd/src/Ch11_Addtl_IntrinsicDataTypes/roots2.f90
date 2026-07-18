PROGRAM roots_2
    
    IMPLICIT NONE 

    REAL :: a, b, c, discriminant
    COMPLEX :: x1   ! First solution to the equation 
    COMPLEX :: x2   ! Second solution to the equation

   WRITE (*, 1000)
   1000 FORMAT ('Program to solve for the roots of a quadratic ', &
                /, 'equation of the form A * X**2 + B + C = 0. ' )
   
   WRITE (*, 1010)
   1010 FORMAT ('Enter the coefficients A, B, and C: ')   
   READ (*, *) a, b, c

   discriminant = b**2 - 4. * a * c

   x1 = (-b + SQRT( CMPLX(discriminant,0.) ) ) / (2. * a)
   x2 = ( b - SQRT( CMPLX(discriminant,0.) ) ) / (2. * a)

   WRITE(*, *) 'The roots are: ' 
   WRITE(*,1020) 'x1 = ', REAL(x1), ' + i ', AIMAG(x1)
   WRITE(*,1020) 'x2 = ', REAL(x2), ' + i ', AIMAG(x2)
   1020 FORMAT (A,F10.4,A,F10.4)

END PROGRAM roots_2








