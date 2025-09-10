program formatb 
    implicit none 
    real :: a,b 
    a = sqrt(5.0) 
    b = sqrt(a)
    write(*,10) a,b 
    10 format(2E14.5)


end program formatb


! ################################################################################

! Integer Specification 
! General Form nim 

! m = number of char spaces reserverd for printing (incl sign if present)
! if actual width is less than m, blanks are printed 
! n = number of integers to output per line, if omitted, one number is output per line 



! Floating Point Specification 
! General format  nfm.d 

! right justified 
! m = number of char spaces reserved for printing (incl sign if present) ,then the decimal point
! if actual width is less than m, blanks are printed 
! n = number of real numbers to output per line. if omitted, one number is output per line 
! d = number of spaces reserved for the fractional part of the number -filled with zeros 
!  if fewer spaces are needed. If the fractional part is too wide, it is rounded. 


! Rule  m>=   width of the integer part plus 
!             d plus 
!             1 (space for decimal) plus 
!             1 (space for sign - if negative)


! Exponentional Specification 
! General form  nEm.d 

! alt spec for outputting real 
! d = number of decimal places 
! m = total width of the field incl sign (if any), the char E and its sign, 
!   the decimal point and the number of places of decimals. 


! Character Specification

! General form  nAm

!   n is the number of strings to print
!   m is the maximum number of characters to output


