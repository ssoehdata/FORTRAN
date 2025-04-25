! from fortran guy , start at timestamp 18:31
program main 
    implicit none 

    INTEGER         :: int500=500, int1000=1000
    REAL            :: real500=500.50, real1000=1000.10 
    CHARACTER(18)   :: charOne="Hello", charTwo="hello", charThree="Hi"

    ! simple if statement format
    ! using the "older" conditional operators
    ! .eq. same as == ;  .lt. same as < ; .ne. same as /=  ; 
    ! .le. same as <= ;  .ge. same as >= ; 

    if (int500 .eq. int1000) then 
        print *, "Int500 is equal to Int1000" 
    end if

    if (int500 .gt. int1000) then 
        print *, "int500 is greater than int1000"
    end if 

    if (int500 .lt. int1000) then 
        print *, "int500 is less than int1000"
    end if 

    if (int500 .ne. int1000) then 
        print *, "int500 is not equal to int1000"
        print *, NEW_LINE(""), "This is a multi-line true result of an if statement"
    end if 
    
    if (int500 .eq.  int1000) then 
        print *, "int500 is equal to int1000"
    else
        print *, "int500 is not equal to int1000"
    end if 

    if (int500 .gt.  int1000) then 
        print *, "int500 is greater than int1000"
    else
        print *, "int500 is not greater than  int1000"
        print *, NEW_LINE(""), "Another line of comments."
    end if 

    print *, "Testing else-if:"
    if (int500 .eq. int1000) then 
        print *, "int500 is equal to int1000"
    else if (int500 .gt. int1000) then 
        print *, "int500 is greater than int1000"
    else if (int500 .lt. int1000) then 
        print *, "int500 is less than int1000"
    else if (int500  .ne. int1000)  then 
         print *, "int500 is not equal to int1000"
    else
        print *, "Unkown case"
    end if 

    if (int500 .lt. int1000) then
        if (real500 .lt. real1000) then 
            print *, "Both conditions are True."
        else 
            print *, "real 500 is not less than real 1000, but int 500 is less than int 1000."
        end if 
    end if 
! n.b always compare reals to reals and ints to ints, avoid mixing comparisons

    print *, NEW_LINE(""),"Testing Logical Operators:"
    if (int500 .lt. int1000 .and. real500 .lt. real1000) then 
        print *,NEW_LINE(""), "Both the left and right conditions are True."
    else
        print *, "One of the conditions is false"
    end if 

    if (int500 .gt. int1000 .or. real500 .lt. real1000) then 
        print *, "Either the left or right conditions are True "
    else 
        print *, "Both the left and right conditions are False."
    end if
   
    if (.not. (int500 .gt. int1000)) then 
        print *,NEW_LINE(""), "Since int 500 is less than int 1000, the .not. statement is True."
    end if

    if (charOne .eq. charTwo) then 
        print *, "The two strings are equivalent"
    else 
        print *, "The two strings are not equivalent"
    end if 
    
    print *, NEW_LINE(""), "Greater than check:"
    if (charOne .gt. charTwo) then 
        print *, " charOne is greater then charTwo, i.e. the Left is not greater than the right."
    else 
        print *, "charOne is not greater than charTwo, i.e. the Left is greater than the right."
    end if     
    

    print *, NEW_LINE(""), "Testing Conditionals"
    
end program main


