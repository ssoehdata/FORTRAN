! Example 13_7 with test program 

PROGRAM test_extremes 

    USE procs
    IMPLICIT NONE 

    INTEGER, PARAMETER :: max_size = 1000

    REAL, DIMENSION(max_size) :: a
    LOGICAL :: exceed = .FALSE. 

    CHARACTER(len=20) :: filename 
    REAL :: large
    INTEGER :: large_pos
    INTEGER :: nvals = 0 
    REAL  :: small
    INTEGER :: small_pos 
    INTEGER :: status 
    REAL :: temp 

    WRITE(*,*) 'Enter the filename with the input data set: ' 
    READ(*, '(A20)') filename 

    OPEN( UNIT=2, FILE=filename, STATUS='OLD', IOSTAT=status ) 

    ! Check if file opened successfully
    fileopen: IF (status == 0 ) THEN 

        DO
            READ (2, *, IOSTAT=status) temp 
            IF (status /= 0 ) EXIT 
            nvals = nvals + 1 
            size: IF (nvals <= max_size) THEN 
                a(nvals) = temp 
            ELSE 
                exceed = .TRUE. 
            END IF size 
       END DO 

       ! Check if array size exceeded, if so inform user. 
       toobig: IF (exceed) THEN 
           WRITE(*,1000) nvals, max_size
           1000 FORMAT ('Maximum array size exceeded: ', I6, '>', I6 ) 
        ELSE 

            CALL extremes(a, nvals,large, large_pos, small, small_pos ) 
            WRITE (*,1020) 'All arguments in order:          ', & 
                large, large_pos, small, small_pos
            1020 FORMAT (1X,A,2(2X,F6.2,2X,I4))

            CALL extremes (a, nvals, MAXVAL=large, MINVAL=small, & 
                POS_MAXVAL=large_pos, POS_MINVAL=small_pos) 
            WRITE(*,1020) 'All arguments in arbitrary order: ', &
                            large, large_pos, small, small_pos

            CALL extremes (a, nvals, MAXVAL=large, MINVAL=small)
            WRITE(*,1030) 'Large and small only:              ', &
                large, small
            1030 FORMAT (1X,A,2(2X,F6.2,6X)) 

         END IF toobig 

  ELSE fileopen 

      WRITE(*, '(A,I6)') 'File open failed: status = ', status 
  END IF fileopen 

  END PROGRAM 

      
