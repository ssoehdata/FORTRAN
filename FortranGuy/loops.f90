! demonstrating loops in FORTRAN 
program loops 
    implicit none 
    
    INTEGER :: x, y 
    INTEGER, dimension(5,5) :: myTable 
    LOGICAL :: logical1 = .TRUE. 

    print *, "SIMPLE DO-LOOP TEST"
    x = 1 
    gotoLabel: DO    ! labels allow goto function to that label e.g.(labelname: )
        print *, "The value of x is: ", x 
        if (x .GE. 10) THEN 
            EXIT 
        else 
            x = x + 1 
            continue 
        endif 
    END DO gotoLabel 

    print *, " Simple FOR LOOP TEST" ! also called a " do counting loop" 
    do x=5, 0, -1    ! 5 is the initialization, 0 is logical, if = 0 it stops, -1 is the incrementer.
        print *, "Looping"
    end do 

    print *, " Simple FOR LOOP Counting Upwards " ! also called a " do counting loop" 
    do x=0, 5, 1   ! if you omit the 1 it will still run 
        print *, "Looping"
    end do 

    ! exit from loop condition
    print *, " Loop exit (after 3 iterations)" 
    do x=0, 5 
        if (x .EQ. 3) THEN 
            exit 
        else  
            print *, "Looping Exit"
        end if
    end do 

    print *, " CYCLE keyword example"  ! cycle is like continue
    do x=0, 5 
        if (x .EQ. 3) THEN 
            cycle 
        else  
            print *, "Cycle example"
        end if
    end do 

    ! sometimes see this in older code
    print *, "Labeled do loops"
    do 10 x=0, 1
        print*, " LOOPING", x 
    10 continue
    
    ! below is older notation using labels (20, 30 etc)
    print *, "TESTING NESTED DO LOOP"
    do 20 x = 1, 5, 1    ! by default Fortran starts arrays at 1
        do 30 y=1, 5, 1
            print *, "Setting array location", x, y 
            myTable(x,y)= x + y        
        30 continue    
    20 continue 

    ! modern version of above is: 
    ! do x = 1, 5, 1
    !    do y = 1, 5, 1 
    !    print *, "Setting array", x, y 
    !    myTable(x,y) = 99 
    !    end do 
    ! end do

    print *, "Testng DO WHILE LOOP"
    x  = 10 
    DO WHILE  (x .GT. 0 .AND. logical1 .EQV. .TRUE.)
        print *, "Looping now..", x 
        x = x - 1
    END DO

    print *, "DO WHILE LOOP With Label (older style)" ! older style
    x = 5 
    do 40 WHILE (x .GT. 0)
        print *, "Looping", x 
        x = x -1 
    40 end do 

    print *, " TESTING OLD STYLE LOOP with GOTO" ! GOTO requires labels
    x = 5 
    50 IF (x .EQ. 0) THEN 
        GOTO 60 
    ELSE 
        x = x -1 
        print *, " Looping with GOTO", x 
        GOTO 50
    END IF
    60 print *, " GOTO LOOP COMPLETED"

    print *, "ENDING PROGRAM AND EXITING"
end program loops 
