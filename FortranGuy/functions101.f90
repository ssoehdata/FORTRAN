program functions101 

    implicit none 
    INTEGER :: x=0, y=2, z=3
    INTEGER, PARAMETER :: stringLength =  80  ! adding the parameter makes this a constant
    CHARACTER(stringLength) :: theString

    PRINT *, " BEGINNING PROGRAM"


    x = PRINTHELLO()
    x = MULTBY2(y)   ! could also pass a literal to it (e.g. 20)
    print *, y , " multiplied by 2 is: ", x
    print *, y, " multiplied by 2 is: ", MULTBY2(y) ! alternate way to do same thing
    x = POWERBY(10,5)  ! this is 10^5, so base then exponent
    print *, " 10 raised to the power of 5 is: ", x
    print *, " 10 raised to the power of 3 is: ", POWERBY(10, 3)

    theString = "hal9000 "

    PRINT *, " ENDING PROGRAM AND EXITING"
    PRINT *, " The name of this machine is : ", theString
    theString = to_upper(theString, stringLength)
    print *, " The upper case value of this machines name is: ", theString
    theString = to_lower(theString, stringLength) 
    print* , " The lower case value of this machines name is: ", theString
    theString = to_upper(theString, stringLength)
    print *, " The upper case value of this machines name is: ", theString

    STOP  ! not required

    contains

        FUNCTION to_upper(theString, theLength) result(retString)
                INTEGER :: theLength
                CHARACTER(theLength) :: theString
                CHARACTER(len=:), allocatable :: retString
                INTEGER :: i=0

                ! like a new() function in C++ or malloc in C
                allocate(character(len=theLength) :: retString)
                DO i=1, theLength, 1  ! incrementin by 1
                !  i:i  i is he counter, and we go from i to i (i:i)
                    IF (theString(i:i) >= 'a' .AND. theString(i:i) <= 'z') THEN
                        retString(i:i) =char(ichar(theString(i:i))-32) ! this is converting from ascii to char
                    ELSE 
                        retString(i:i) = theString(i:i)
                    END IF
                END DO 
                RETURN

        END FUNCTION to_upper 


        FUNCTION to_lower(theString, theLength) result(retString)
                INTEGER :: theLength
                CHARACTER(theLength) :: theString
                CHARACTER(len=:), allocatable :: retString
                INTEGER :: i=0

                ! like a new() function in C++ or malloc in C
                allocate(character(len=theLength) :: retString)
                DO i=1, theLength, 1  ! incrementin by 1
                !  i:i  i is he counter, and we go from i to i (i:i)
                    IF (theString(i:i) >= 'A' .AND. theString(i:i) <= 'Z') THEN
                        retString(i:i) =char(ichar(theString(i:i))+32) ! this is converting from ascii to char
                    ELSE 
                        retString(i:i) = theString(i:i)
                    END IF
                END DO 
                RETURN

        END FUNCTION to_lower 


        INTEGER FUNCTION PRINTHELLO()
            print *, "GREETINGS FROM PRINTHELLO() FUNCTION"
            PRINTHELLO = 0
            RETURN
        END FUNCTION PRINTHELLO     ! ends the block of code

        INTEGER FUNCTION MULTBY2(X)
            INTEGER :: X 
            MULTBY2 = X * 2 
            RETURN
        END FUNCTION MULTBY2

        INTEGER FUNCTION POWERBY(x, y) 
            INTEGER :: x, y, z,  thePower   ! here z is only local to this block of code, if used outside of it
                                            ! compiler will throw an error
            thePower = x 
            DO z = 2, y
                thePower = thePower * x 
            END DO
            POWERBY = thePower 
            RETURN 
        END FUNCTION POWERBY
    
end program functions101