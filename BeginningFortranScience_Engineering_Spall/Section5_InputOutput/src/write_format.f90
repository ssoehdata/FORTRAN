PROGRAM write_format 

!  SOME FORMATTING RESULTS
REAL :: a=1,b=2,c=3
CHARACTER(20) :: d,e,f
d='The value for a is: '
e='The value for b is: '
f='The value for c is: '

PRINT*; PRINT*
WRITE(*,*)a,b,c   !free format
PRINT*
WRITE(6,100)a,b,c
100 FORMAT(2F10.3,F6.0)
PRINT*
WRITE(*,'(3E10.3)')a,b,c
PRINT*
WRITE(*,'(3ES10.3)')a,b,c
PRINT*
write(*,200)a,b,c
200 FORMAT(5X,F3.1,5X,F3.1,5X,F3.1)
PRINT*
WRITE(*,300)a,b,c
300 FORMAT(T5,f5.1,T10,F5.1,T20,F5.1)
PRINT*
WRITE(*,400)a,b,c
400  FORMAT(F3.1,/,F3.1,/,F3.1)
PRINT*
WRITE(*,500)a,b,c
500 FORMAT(f5.4,2X,f5.3,2X,f5.2)
PRINT*
WRITE(*,600)a,b,c
600 FORMAT('The value for a is:',F4.1,/, &
           'The value for b is:',F4.1,/, &
           'The value for c is:',F4.1)
PRINT*
WRITE(*,'(A)')d,e,f
PRINT*
WRITE(*,700)d,a,e,b,f,c
700  FORMAT(A,f5.2,3X,A,f5.2,/,A,f5.2)
PRINT*
END
