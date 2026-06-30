PROGRAM write_format 

!  SOME FORMATTING RESULTS
REAL :: a=1,b=2,c=3
CHARACTER(20) :: d,e,f
d='The value for a is: '
e='The value for b is: '
f='The value for c is: '

PRINT*; PRINT*
PRINT*, "Free-format print example for values of a, b, c: "
PRINT *
WRITE(*,*)a,b,c   !free format
PRINT *, '---------------------------------------------------------------------------------------------------'
PRINT *
PRINT *, "Using a 100 Formatted print statment: ' WRITE(6,100)a, b, c ' "
PRINT *, "  The 100 Formatted print statement: '100 FORMAT(2F10.3,F6.0)'  " 
PRINT *
WRITE(6,100)a,b,c
100 FORMAT(2F10.3,F6.0)
PRINT *, '---------------------------------------------------------------------------------------------------'
PRINT*
PRINT *, "Formatted print example: ' WRITE(*,'(3E10.3)')a, b, c ' "
PRINT *
WRITE(*,'(3E10.3)')a,b,c
PRINT *, '---------------------------------------------------------------------------------------------------'
PRINT*
PRINT *, "Formatted print example: ' WRITE(*, '(3ES10.3)')a, b, c ' "
PRINT *
WRITE(*,'(3ES10.3)')a,b,c
PRINT *, '---------------------------------------------------------------------------------------------------'
PRINT *
PRINT *, "Formatted print example: ' WRITE(*,200)a, b, c ' "
PRINT *, "  The 200 Formatted print statement: '200 FORMAT(5X,F3.1,5X.F3.1,5X,F3.1)' "
PRINT *
write(*,200)a,b,c
200 FORMAT(5X,F3.1,5X,F3.1,5X,F3.1)
PRINT *, '---------------------------------------------------------------------------------------------------'
PRINT *
PRINT *, "The 300 Formatted print statement: 'WRITE(*,300)a,b,c' "
PRINT *, "  The 300 FORMAT statement: ' 300 FORMAT(T5,f5.1, T10, F5.1,T20,F5.1)' "
PRINT *
WRITE(*,300)a,b,c
300 FORMAT(T5,f5.1,T10,F5.1,T20,F5.1)
PRINT *, '---------------------------------------------------------------------------------------------------'
PRINT *
PRINT *, "Using a 400 FORMAT statement: 'WRITE(*,400)a,b,c' "
PRINT *, "  The 400 Formatted print statement: '400 FORMAT(F3.1,/,F3.1,/F3.1)' "
PRINT *
WRITE(*,400)a,b,c
400  FORMAT(F3.1,/,F3.1,/,F3.1)
PRINT *, '---------------------------------------------------------------------------------------------------'
PRINT *
PRINT *, "Using a 500 FORMAT statement: 'WRITE(*,500)a,b,c' "
PRINT *, "  The 500 FORMAT statement: '500 FORMAT(f5.4,2X,f5.3,2X,f5.2)' "
PRINT *
WRITE(*,500)a,b,c
500 FORMAT(f5.4,2X,f5.3,2X,f5.2)
PRINT *, '---------------------------------------------------------------------------------------------------'
PRINT *
PRINT *, "Using a 600 Format statement: 'WRITE(*,600)a,b,c' "
PRINT *, "  The 600 FORMAT statement:'600 FORMAT('The value for a is:' ,F4.1,/,The value for b is:' ,F4.1,/, " 
PRINT *,                                       " 'The value for c is:',F4.1,)'" 
PRINT *
WRITE(*,600)a,b,c                                                                  
600 FORMAT('The value for a is:',F4.1,/, &
           'The value for b is:',F4.1,/, &
           'The value for c is:',F4.1)
PRINT *, '---------------------------------------------------------------------------------------------------'
PRINT *
PRINT *, "Using a 700 FORMAT statement: 'WRITE(*,700)d,a,e,b,f,c)' "
PRINT *, "  The 700 FORMAT statement: '700 FORMAT(A,f5.2,3X,A,f5.2,/,A,f5.2) "
PRINT *
WRITE(*,700)d,a,e,b,f,c
PRINT *, '---------------------------------------------------------------------------------------------------'
PRINT *
700  FORMAT(A,f5.2,3X,A,f5.2,/,A,f5.2)
PRINT *, '%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%'
PRINT *, "                                      END EXAMPLES                                                  "
PRINT *, '%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%'
PRINT *
END
