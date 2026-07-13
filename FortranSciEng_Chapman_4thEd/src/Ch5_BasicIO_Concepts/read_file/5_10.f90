PROGRAM read_file 
!
! Purpose: 
!       To illustrate how to read an unknown
!       number of values from an input data
!       file, detecting both any formatting 
!       errors and the end of the file. 
!       
        IMPLICIT NONE 
        CHARACTER(len=20) :: filename           ! Name of file to open
        CHARACTER(len=80) :: msg                ! Error message 
        INTEGER :: status                       ! I/O status
        INTEGER :: nvals = 0
        REAL    :: value                        ! Real value read in
        
        ! Get the file name, and echo it back to user
        WRITE(*,*) 'Enter input file name: '
        READ(*, *) filename 
        WRITE(*,1000) filename
        1000 FORMAT ('The input file name is: ' A) 

        ! Open the file and check for errors on open. 

        OPEN (UNIT=3, FILE=filename, STATUS='OLD', ACTION='READ',&
                IOSTAT=status, IOMSG=msg)
        openif: IF (status == 0) THEN 
                
            ! Open was ok. Read values 
            readloop: DO 
                READ (3, *,IOSTAT=status) value
                IF (status /= 0) EXIT 
                nvals = nvals + 1
                WRITE(*, 1010) nvals, value ! Echo to screen 
                1010 FORMAT ('Line ', I6, ': Value = 'F10.4 )
            END DO readloop 
              
                    ! The WHILE loop has terminated. Was it because of a READ
                    ! error or because of the end of the input file? 
                    readif: IF (status > 0 ) THEN ! a READ error occurred. Tell user.
                        WRITE (*,1020) nvals + 1
                        1020 FORMAT ('An error occurred reading line ', I6 ) 
                    ELSE !  the end of trhe data was reached. Tell user. 

                        WRITE (*,1030) nvals 
                        1030 FORMAT ('End of file reached. There were ', I6, &
                            ' values to the file. ') 
                    END IF readif 

               ELSE openif 
                   WRITE (*,1040) status 
                   1040 FORMAT ('Error opening file: IOSTA = ',I6 )
                   WRITE(*, 1050) TRIM(msg)
                   1050 FORMAT (A)
              END IF openif

              ! Close file 
              CLOSE (UNIT=3)
              
 END PROGRAM read_file 
