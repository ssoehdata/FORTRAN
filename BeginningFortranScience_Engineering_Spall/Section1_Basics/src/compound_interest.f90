!     Program to Compute Monthly Compounded Interest
PROGRAM compound_interest
IMPLICIT NONE
INTEGER, PARAMETER :: n=12   !compounded monthly
INTEGER :: years
REAL :: total, principle, interest_rate

! DEFINITIONS
!interest_rate=input as annual interest rate in %; then converted to decimal
!years=time in years for interest to accululate
!n=number of times interest is compounded per unit time (a year); a constant
!principle=initial investment amount
!total=future value of investment after interest payments

PRINT*
PRINT*,'COMPOUNDED MONTHLY INTEREST CALCULATOR'
PRINT*
PRINT*,'Enter the initial investment amount in $'
READ(*,*)principle

WRITE(*,*)'Enter the number of years for the investment'
READ *,years

PRINT*,'Enter the percent interest rate'
READ(*,*)interest_rate
interest_rate=interest_rate/100.    !convert rate to a decimal

PRINT*,'The initial principle is:',principle
PRINT*,'The interest rate is: ',interest_rate*100,'%'
!total value of investment after "years"
total=principle*(1.0 + interest_rate/n)**(n*years)

PRINT*,'The value of your investment after',years,'years is $',total
END PROGRAM compound_interest