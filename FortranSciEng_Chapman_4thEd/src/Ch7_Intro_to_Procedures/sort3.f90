! Ex. 7-1
PROGRAM sort3
!
!   Purpose:
!       To read in a real input data set,
!       sort it into ascending order using the
!       selection sort algorithm, and to write 
!       the sorted data to the standard output device.
!       This program calls subroutine "sort" 
!       to do the actual sorting. 
!
IMPLICIT NONE 

! Data dictionary: declare constants 
INTEGER, PARAMETER :: MAX_SIZE = 10    ! Max input data size 

! Data dictionary: declare variables types & definitions 
REAL, DIMENSION(MAX_SIZE) :: a          ! Data array to sort 
LOGICAL :: exceed = .FALSE.             ! Logical indicating that 
                                     ! array limits are exceeded.
CHARACTER(len=20)    :: filename         ! Input data file name 
INTEGER             :: i               ! Loop index 
CHARACTER(len=80)    :: msg            ! Error message 
INTEGER             :: nvals = 0     ! Number of data values to sort                                 
INTEGER             :: status       ! I/O status: 0 for sucess 
REAL                :: temp        ! Temporary variable for reading

! Get the name of the file containing the input data. 
WRITE (*,*) 'Enter the file name with the data to be sorted: ' 
READ  (*, 1000) filename 
1000 FORMAT ( A20 )

! Open input data file. Status is OLD because the input data must 
! already exist. 
OPEN ( UNIT=9, FILE=filename, STATUS='OLD' , ACTION='READ' , &
       IOSTAT=status, IOMSG=msg )

! Was the OPEN successful? 
fileopen: IF ( status == 0 ) THEN       ! Open successful 
    
    ! The file was opened succssfully, so read the data to sort 
    ! fromt it, sort the data, and write out the results. 
    ! First read in data. 
    DO 
        READ ( 9, *, IOSTAT=status) temp ! Get value 
        IF ( status /= 0 ) EXIT          ! Exit on the end of data
        nvals = nvals + 1             ! Bump count 
        size: IF ( nvals <= MAX_SIZE ) THEN ! Too many values? 
            a(nvals) = temp            ! No: Save value in array
        ELSE 
            exceed = .TRUE.            ! Yes: Array overflow
        END IF size 
    END DO 

    ! Was the array size exceeded? If so, tell user and quit. 
    toobig: IF ( exceed ) THEN 
        WRITE ( *,1010) nvals, MAX_SIZE 
        1010 FORMAT ( ' Maximum array size exceeded: ', I6, ' > ', I6 )
    ELSE 
        ! Limit not exceeded: sort the data. 
        CALL sort(a, nvals)

        ! Now write out the sorted data.
        WRITE(*, '(A)' ) ' The sorted output data values are: ' 
        WRITE(*, '(3X,F10.4)') (a(i), i = 1, nvals )
    END IF toobig 
ELSE fileopen 

    ! Else file open failed. Tell user.
    WRITE (*,1050) TRIM(msg)
    1050 FORMAT ('File open failed--error = ', A)
END IF fileopen 

END PROGRAM sort3 

!******************************************************************
!******************************************************************

SUBROUTINE sort (arr, n)
!
! Purpose:
!   To sort real array "arr" into ascending order using a selection 
!   sort.
!
IMPLICIT NONE 

! Data dictionary: declare calling parameter types  & definitions 
INTEGER, INTENT(IN) :: n                 ! Number of values 
REAL, DIMENSION(n), INTENT(INOUT) :: arr  ! Array to be sorted

! Data dictionary: declare local vaiable types & definitions 
INTEGER :: I                    ! Loop index 
INTEGER :: iptr                  ! Pointer to smallest value 
INTEGER :: j                    ! Loop index 
REAL    :: temp                 ! Temp variable for swaps 

! Sort the array 
outer: DO i = 1, n-1 

    ! Find the minimum value in arr(I) through arr(N) 
    iptr = i 
    inner: DO j = i+1, n 
        minval: IF ( arr(j) < arr(iptr) ) THEN 
            iptr = j 
        END IF minval 
    END DO inner 

    ! iptr now points to the minimum value, so swap arr(iptr)
    ! with arr(i) if i /= iptr.
    swap: IF ( i /= iptr ) THEN 
        temp    = arr(i)
        arr(i)    = arr(iptr) 
        arr(iptr)  = temp 
    END IF swap

END DO outer 

END SUBROUTINE sort 
