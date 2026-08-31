! Test driver program for subroutine running_average

PROGRAM test_running_average
        
        IMPLICIT NONE 
        
        INTEGER :: istat 
        REAL    :: avg 
        REAL    :: std_dev
        CHARACTER(len=80) :: msg
        INTEGER :: nvals
        REAL    :: x
        CHARACTER(len=20) :: file_name

        ! Clear the running sums. 
        CALL running_average ( 0., avg, std_dev, nvals, .TRUE. )

        WRITE(*,*) 'Enter the file name conaitng the data: '
        READ(*, '(A20)') file_name 
       
        ! Open input data file. Status is OLD becuase the input
        ! data must already exist. 
        OPEN (UNIT=21, FILE=file_name, STATUS='OLD', ACTION='READ', &
            IOSTAT=istat, IOMSG=msg )
        
        ! Confirm OPEN was successful
        openok: IF (istat == 0 ) THEN 
            calc: DO
                READ (21,*,IOSTAT=istat) x
                IF ( istat /= 0 ) EXIT

                CALL running_average ( x, avg, std_dev, nvals, .FALSE. ) 

                WRITE( *,1020) 'Value = ',x, ' Avg = ', avg, &
                    ' Std_dev = ', std_dev, &
                    ' Nvals = ', nvals
                1020 FORMAT  (3(A,F10.4),A,I6)
            END DO calc

         ELSE openok
             
             WRITE(*,1030) msg
             1030 FORMAT ('File open failed: ', A)
         END IF openok 

END PROGRAM test_running_average 
