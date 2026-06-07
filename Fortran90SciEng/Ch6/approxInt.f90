! --------------------------------------------------------------------------
!   Program to approx. the integral of a function over the interval
!   [A,B] using the trapezoidal method. Identifiers used:
!   A, B   - the endpoints of the interval for integration
!   N      - the number of subintervals
!   I      - counter
!   DeltaX - length of the subintervals
!   X      - a point of subdivision
!   Y      - the value of the function at X
!   Sum    - the approximating sum
!   F      - the integrand (internal function)
!
!  The sum is calculated as: Sum = DeltaX * (( F(A) + F(B) / 2 ) + Sum)
!  This program approximates the integrand of f(x) = x^2 + 1
!
!  Input: A, B, and N
!  Output: Approximation to integral of F on [A, B]
! --------------------------------------------------------------------------

PROGRAM Approximate_Integration
    IMPLICIT NONE
    REAL :: A_lower_bound, B_upper_bound, DeltaX, X, Y, Sum
    Integer :: N_num_subintervals, I
    PRINT *, "Enter the interval endpoints and the number of subintervals: "
    READ *, A_lower_bound, B_upper_bound, N_num_subintervals

    ! Calculate subinterval length
    ! and initialize the approximating Sum and x

    DeltaX = (b_upper_bound - A_lower_bound) / REAL(N_num_subintervals)
    X = A_lower_bound
    Sum = 0.0

    DO I = 1, N_num_subintervals - 1
        X = X + DeltaX
        Y = F(X)
        Sum = Sum + Y
    END DO

    Sum = DeltaX * (( F (A_lower_bound) + F(B_upper_bound)) / 2.0 + Sum)
    PRINT *
    PRINT  '(1X, "Approximate value using ", I4, &
        " subintervals is", F10.5)', N_num_subintervals, Sum
    PRINT *
    PRINT  '(1X, "Using Scientific Notation ", I4, &
        " subintervals is", ES15.5)', N_num_subintervals, Sum
    PRINT *
    PRINT  '(1X, "Using Engineering Notation ", I4, &
        " subintervals is", EN15.5)', N_num_subintervals, Sum
    PRINT *
    PRINT  '(1X, "Using Exponential Notation ", I4, &
        " subintervals is", E15.5)', N_num_subintervals, Sum
    PRINT *

    CONTAINS

    FUNCTION F(X)       ! Define the Integrand F(X) to calculate using the algorithm defined
        REAL :: F
        REAL, INTENT(IN) :: X

        F = X**2 + 1.0

    END FUNCTION F

END PROGRAM Approximate_Integration
