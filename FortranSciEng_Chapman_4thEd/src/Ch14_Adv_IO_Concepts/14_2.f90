PROGRAM open_file 
!      
!   Purpose: 
!       Demonstrate how to prevent an output file 
!       from accidentally overwriting data.
!
    IMPLICIT NONE 
   
    INTEGER :: istat
    LOGICAL :: lexist 
    LOGICAL :: lopen = .FALSE. 
    CHARACTER(len=20)   :: file_name 
    CHARACTER :: yn

    Openfile: DO 
    ! Get output file 
    WRITE(*, *) 'Enter output file name: ' 
    READ(*,'(A)') file_name
    
    ! Does file already exist? 
    INQUIRE(FILE=file_name, EXIST=lexist ) 
    exists: IF ( .NOT. lexist) THEN 
       ! It's OK, the file didn't already exist. Open file. 
      OPEN (UNIT=9, FILE=file_name, STATUS='NEW', ACTION='WRITE', IOSTAT=istat)
     lopen = .TRUE. 

 ELSE
    ! FIle exists. Should we replace it? 
   WRITE(*, *) 'Output file exists. Overwrite it? (Y/N) ' 
   READ (*, '(A)') yn 
   ! CALL ucase ( yn )

   replace: IF ( yn == 'Y' ) THEN 
       ! It's OK. Open file. 
       OPEN (UNIT=9, FILE=file_name, STATUS='REPLACE', ACTION='WRITE',IOSTAT=istat)
            lopen = .TRUE. 
       END IF replace 
       

   END IF exists 
   IF (lopen) EXIT 
END DO openfile 

! Now write output data, and close and save file. 
    WRITE(9,*) 'This is the output file!' 
    CLOSE (9,STATUS='KEEP')

END PROGRAM open_file 
