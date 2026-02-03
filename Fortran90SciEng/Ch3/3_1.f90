PROGRAM QuadraticEquations_1
! Program to solve quadratic eqtn. using the quadratic formula.
! Variables used: 
! A, B, C      : the coefficients of the quadratic eqtn
! Discriminant   : the discriminant, B**2 - 4.0*A*C
! Root_1, Root_2 : the two roots of the eqtn 

! Inout: The coefficients A, B, and C
! Output: The two roots fo the eqtn or the (neg) discriminant and a 
!        message indicating that there are no real roots. 

Implicit NONE 
REAL :: A, B, C, Discriminant, Root_1, Root_2 

! Get the coefficients
PRINT *, "Enter the coefficients of the quadratic equation:"
READ *, A, B, C 

! Calculate the discriminant 
Discriminant = B**2 - 4.0*A*C 

! Check if discriminant is nonegative. It if is, calculate and 
! display the roots. Otherwise, display the value of the discriminant 
! and a no-real-roots message. 

IF (Discriminant >= 0) THEN 
    Discriminant = SQRT(Discriminant)
    Root_1 = (-B + Discriminant) / (2.0 * A)
    Root_2 = (-B -  Discriminant) / (2.0 * A)
    PRINT *, "The roots are", Root_1, Root_2 
ELSE 
    PRINT *, "Discriminant is", Discriminant 
    PRINT *, "There are no real roots"
END IF 

END PROGRAM QuadraticEquations_1