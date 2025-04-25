! printing floating point numbers

program printflt
    implicit none

    integer :: myInteger =  876
    integer :: myInteger1 = 999
    integer :: myInteger2 = 456
    integer :: myInteger3 = 427
    integer :: myInteger4 = 615
    integer :: myInteger5 = 888
    integer :: myInteger6 = 900
    integer :: myInteger7 = 010
    integer :: myInteger8 = 101
    integer :: myInteger9 = 222

    real :: myReal = 3.14151926

    ! adding the NEW_LINE('') below makes these dbl spaced
    ! Integer Values format: nIw.d  // repeat (n),I (column), width(w) d (digits)
print "(5(I6.3),A)", myInteger, myInteger1, myInteger2, myInteger3, myInteger4, NEW_LINE('')
print "(5(I6.3),A)", myInteger5, myInteger6, myInteger7, myInteger8, myInteger9,NEW_LINE('')

    !Ascii strings format: nAw  repeat count(n), A , width(w)
print *, "***Testing string output."
print *, "***Testing integer output."
    !Real Values print format: nFw.f:   repeating(n), Floating point(F), width(w), fractional part(f)
print *, "***Testing floating point output."
!N.B.: the below method will give diff result from what was inputed  due to the way comp handles
!      floating points / and rounding
print *, myReal
! use this formatting to get closer to inputted value by allowing sufficient width and float point
! but there are still rounding discrepancies from the cpu
print "(1F16.11)", myReal
print*, "Testing the g0 (unlimited format specifier) format function"
print "(g0)" , myReal 
print "(1F16.11)" , 3.14151926
print "(es24.16e3)", myReal
print "(2(A,F16.8, 1x))", "First Floating Point is: ", myReal, "Second Floating Point is: ", myReal
! Exponent Print format: nEw.d
print *, "Testing exponent Output"
print "(1E8.2)", myReal

print *, "Testing Scientific Notation Output"
print "(1ES16.8)", myReal
!Combine Ascii w Sci Notation output
print "(A, 1ES16.8)", "The Scientific Notation for myReal is: " , myReal


end program printflt