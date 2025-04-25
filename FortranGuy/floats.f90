! basic printing and formatting to the screen
program floats
    implicit none
   
    character(15)::hello = "Hello Dave"
    character(12)::string1 = "Hi"
    character(12)::string2 = "Examples of printing floating points."
    integer::myInteger = 9000
    integer::myInteger2 = 9001
    integer::myInteger3 = 9002
    integer::myInteger4 = 9003
    integer::myInteger5 = 7004
    integer::myInteger6 = 6015
    integer::myInteger7 = 1003
    integer::myInteger8 = 2003
    
    
    real :: myReal = 456.7896

!Ascii Strings: nAw
    print *, "Testing string output."
    print "(2(A5,A))", string1, NEW_LINE(' '), string2
    print *, "*** Testing string output."
    print "(I9.8)", 123
    print "(4(I6.3),A)", myInteger, myInteger2, myInteger3, myInteger4, NEW_LINE('')
    
    !Real Values: nFw.f
    print *, "Testing Floating Point Output"
    !when printing simply as myReal, CPU will make some trailing errors in the last sig figs
    print *, myReal
    ! this format forma example  only gives 2 decimal places (rounded up)
    print "(1F8.2)", myReal
    ! this will disply 4 decimal places 
    print "(1F8.4)", myReal
    ! let's try printing this with a width of 16 and 8 decimal places
    ! it will show that the number is not stored perfectly
    !Aside:
    ! In general, make sure you provide sufficient column width for both the integer 
    ! and fractional / decimal values in your numbers. 
    print "(1F16.8)", myReal
    ! printing a literal with the same format shows that it
    ! also is not stored completely accurately in the cpu
    print "(1F16.8)", 123.45

    ! To repeat or print something twice: make sure to add the repeat amount (2)
    ! in front of the formatting
    print "(2F16.8)", myReal, myReal
    print "(3F16.8)", myReal, myReal, myReal

    ! Mixing ascii and floats in a print output

    print "(2(A, F16.8))", "First Floating Point is: ", myReal, "Second Floating Point is: ", myReal
    ! the last digit and x below (1x) adds the number of spaces in the output
    ! you can also mix integers,and floats etc in the output in the same manner
    print "(2(A, F16.8, 1x))", "First Floating Point is: ", myReal, "Second Floating Point is: ", myReal

    ! Printing Exponents: nEw.d  // n the value, E for exponents, w for width, d for the digits
    print *, "Testing Exponent Output"
    print "(1E8.2)" , myReal

    ! Scientfic Notation printing: add an 'S' to the format above / nESw.d
    
    print *, "Testing Scienific Notation"
    print "(1ES8.2)" , myReal

    print "(1ES14.8)" , myReal
    ! below mixed ascii (A) with sci notation in the output
    print "(A, 1ES14.8, 1x)" , "The Scientific Notation for myReal is: ", myReal 



end program floats