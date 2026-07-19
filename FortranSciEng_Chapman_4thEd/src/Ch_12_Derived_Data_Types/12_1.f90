PROGRAM test_io

! Purpose:
!       To illustrate I/O of variables
!       of derived data types. 

        IMPLICIT NONE 
        TYPE :: person 
                CHARACTER(len=14) :: first_name 
                CHARACTER :: middle_initial 
                CHARACTER(len=14) :: last_name 
                CHARACTER(len=14) :: phone 
                INTEGER :: age 
                CHARACTER :: sex 
                CHARACTER(len=11) :: ssn
        END TYPE person 
        
        ! Declare a variable of type person
        TYPE (person) :: Dave
        
        dave = person('Dave','M','Bowmann','317-9000',21,'M','200-01-1968')

        WRITE(*,1000) dave
        1000 FORMAT ('Formatted I/O:',/,4(1X,A,/),1X,I4,/,1X,A,/,1X,A)

END PROGRAM test_io
