! from 7th lecture 
! Program description: Demonstrate some mathematical functions
! compiles with gnufortran 11.4.0
program main 

implicit none 

INTEGER     ::       integer1, integer2, integer3
INTEGER*8   ::       testInt1                  ! create a large 8 byte integer
REAL(8)        ::       real1,   real2,   real3 ! adding this (8) fixes overflow of sinh(90)
                                                ! without it result is 'infinity' / overflow
DOUBLE PRECISION    ::  db1, db2, db3
character*1 tab                                ! creaate a 1 byte char called tab
tab = char(9)                                  ! assign this for formatting purposes 
                                               ! on printout

integer1 =  100
integer2 =  200

integer3 = integer1 + integer2

print*,  tab, " ****** Simple Mathematical Operations ******"
print*,  tab,  " "
print *, tab, "A) Adding integer1 and integer2:"
print *, tab, " ", integer3
integer3 = integer1 + 399
print *, tab, "B) Simple addition of a variable and a literal:"
print *, tab, " ", integer3
integer3 = integer1 - integer2 ! compare this with example D) below
print*,  tab, "C) Simple subtaction of two integers:"
print *, tab, " ", integer3
print*,  tab, "D) Another example: "
integer3 = 399  -  integer1    ! the literal in front has no effect(compare with B)) 
print *, tab, " ", integer3
! multiplication 
integer3 = integer1 * integer2 
print*, tab, "E) Multiplying two variables:"
print*, tab, " " , integer3 
! Division 
real1 = 34.998
real2 = 334.667
real3 = real2 / real1

print*, tab, "F) Division of two reals:"
print*, tab, real3
! Exponents
integer3 = integer2 **2
print*, tab, "G) Exponents: squaring an integer with value:", integer2
print*, tab, integer3 
! Negation Operator
integer3 = -integer2
print*, tab, "H) Negation of an integer:"
print*, tab, integer3
! Modulo Operator
print *, tab, "I) Modulo Operator:"
print *, tab, "Modulo of 17/3 is:"
print *, tab, modulo(17,3)
! another method using 'mod' instead of 'modulo'
real2 = mod(1224.5 , 14.0  )
print *, tab, "Modulo of 12224.5 / 14.0 is:"
print *, tab, integer3
! Numeric Functions
real1 = 90.00

print*, tab, "J) The square root of 90.00 is:"
print*, tab,  sqrt(real1)
print*, tab, "K) The Sin, Cosine and Sinh (HyberbolicSin) of 90.00 are:"
print*, tab, sin(real1), cos(real1), sinh(real1)
! Logarithmic Functions
 
print*, tab, "L) The log10 of 90 is: "
print*, tab, log10(real1)
print*, tab, "The natural log of 90 is:"
print*, tab, log(real1)

! Order of operations (a.k.a operator precedence)
! negation, parenthesis, mult/div (L-R), add/subtr (L-R)
real1 = 100.22 
real2 = 456.99
real3 = real1 + real2 / real1
! n.b.: functions will go first w/respect to order of operations 
! e.g. ((real1 + (-real2)) /mod(real1, 14.22))
! therefore negations, parenthesis, functions, mult/div, add/subt

print*, "Order of Operations Nr.: ", real3

print*, tab, " "
print*, tab, "***** ENDING PROGRAM MATH *****"

end program main