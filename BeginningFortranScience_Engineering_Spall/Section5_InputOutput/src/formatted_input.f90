PROGRAM formatted_input
IMPLICIT none
REAL :: a,b,c
INTEGER :: istatus

PRINT*
OPEN(UNIT=20,file="data1",status='old',iostat=istatus)
PRINT*,'istatus 20= ',istatus
OPEN(UNIT=21,file='data2',status='old',iostat=istatus)
PRINT*,'istatus 21= ',istatus
PRINT*

READ(20,*,IOSTAT=istatus)a,b,c  !reads data from unit 20
PRINT*,'unit 20 istatus=',istatus
WRITE(*,*)a,b,c
REWIND(20)       !rewinds unit 20
PRINT*

READ(20,100,IOSTAT=istatus)a,b,c
100 FORMAT(3f10.3)
PRINT*,'unit 20 istatus=',istatus
WRITE(*,*)a,b,c
REWIND(20)
PRINT*

READ(21,100,IOSTAT=istatus)a,b,c
PRINT*,'unit 21 istatus=',istatus
WRITE(*,*)a,b,c
PRINT*

!  INCORRECT FORMAT STATEMENT
READ(20,101,IOSTAT=istatus)a,b,c
101 FORMAT(2f10.3,I10)
PRINT*,'unit 20 istatus=',istatus
REWIND(20)
WRITE(*,*)a,b,c
PRINT*

CLOSE(20); CLOSE(21)

END PROGRAM formatted_input