! -----------------------------------------------
! Assignment 
! [x] Read data from user input filename 
! [x] ask user to enter data file name 
! [x] open file within the program
! [x] read in and print out to screen the data
! [x] name the first column time, second column temperature
! [x] check if file read was successful
! [x] End reading file when end of file reached, exit process gracefully 
!    when eof is reached.
! ------------------------------------------------
PROGRAM read_data 
    IMPLICIT NONE 
    
    INTEGER :: read_status, open_status, number=0
    CHARACTER(30) :: file_name
    REAL    :: time, temperature

    PRINT *
    WRITE(*, '(A)',ADVANCE='NO') "Enter the data file name: "
    READ(*, '(A)')file_name
    OPEN(UNIT=10, file=file_name,STATUS='OLD',IOSTAT=open_status)
    WRITE(*,25)open_status
    IF (open_status /=0) THEN
        WRITE(*,*) "Error Opening Data File. Program Terminated"
        STOP
    END IF

    DO 
        READ(10,*,IOSTAT=read_status)time,temperature
        WRITE(*,50)read_status
        IF (read_status .EQ. -1) THEN 
            WRITE(*,*) "END OF DATA FILE REACHED"
            EXIT
        ELSE 
           WRITE(*,200)time, temperature
           number=number+1
        END IF 
    END DO

    WRITE(*,250)number     

 25  FORMAT(1X,'Open File Status = ',I4)
 50  FORMAT(/,1X,'Read File Status = 'I4)
 100 FORMAT(2f10.2)
 200 FORMAT(1X, 'Time=',F5.0,/,1X,'Temperature=',F5.0)
 250 FORMAT(//1X,i5, 'Total Number of Data Points Read',//)

END PROGRAM read_data 
