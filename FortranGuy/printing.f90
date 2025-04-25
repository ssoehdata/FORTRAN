! basic printing and formatting to the screen
program printing
    implicit none
   
    character(15)::hello = "Hello Dave"
    character(12)::string1 = "Hi"
    character(12)::string2 = "this is Hal"
    integer::myInteger = 9000
    integer::myInteger2 = 9001
    integer::myInteger3 = 9002
    integer::myInteger4 = 9003
    integer::myInteger5 = 7004
    integer::myInteger6 = 6015
    integer::myInteger7 = 1003
    integer::myInteger8 = 2003
!prints Hello Dave to the screen
print *, hello    
! formatting string, data type needs to be entered, here A for Ascii and 
! a width of 12
print "(A)", string1
! Ascii char with 5 characters -will only print 5 characters (spaces count also)
print "(A9)", hello
! using the repeat character to combine two strings, this ex combines 2 ascii char vars 
! each of length 2: (2A2) - will print 'Hith'
print "(2A2)", string1, string2
! can use separate values for each one as well, A3 will add a space to 'Hi' 
print "(A3 A15)", string1, string2
! add a space with 'nx"  with n being the number of spaces, e.g. 1x below
print "(A2, 1x, A15)"
! can also do the following
print "(A2, 1x, A15,2x, A15)", string1,string2, hello
!can repeat specified items as well 
! the format follows the pattern:  repeat/A/WIDTH  e.g. 2A2
! another way to state the above format is: nAw   n for num, A for ascii, w for width
print "(2(A5, 1x))", hello, hello
! print on a new line using NEW_LINE(''), xxxxx  - works on gnufortran and intel fortran
print "(2(A5, A90))",hello,NEW_LINE(''),string2
print *,hello,NEW_LINE(''),string2
! if printing an integer without giving a format it will add spaces because integers
! are actually larger than the number of digits
print *, 9000
! can format this by specifying integer (I) column width (n) and the number of digits(n) in
! the example below I4.4 / column width and intern num can be different of course 
! below example will be printed using only 4 spaces
print "(I4.4)", 9000
! this will add one space in front
print "(I5.4)",9000
print "(I5.4)", myInteger
print"(4(I5.4))", myInteger, myInteger2, myInteger3,myInteger4
!note the variance in (4I5.4) below, yet it prints out the same
print"(4I5.4)", myInteger5, myInteger6, myInteger7,myInteger8
print * , NEW_LINE('')
! can make this dbl space (or other defined spacing as well)
print"(4(I5.4),A)", myInteger, myInteger2, myInteger3,myInteger4,NEW_LINE('')
print"(4(I5.4),A)", myInteger5, myInteger6, myInteger7,myInteger8,NEW_LINE('')
end program printing