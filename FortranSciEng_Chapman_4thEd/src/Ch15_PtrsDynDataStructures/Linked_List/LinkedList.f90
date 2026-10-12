! Figure 15-14
PROGRAM linked_list 
    IMPLICIT NONE 
    ! Derived type data to store real values in
    TYPE :: real_value
        REAL :: value
        TYPE (real_value), POINTER :: p
    END TYPE

    ! Data Dictionary: variables, types & definitions
    TYPE (real_value), POINTER :: head  ! Pointer to head of list
    CHARACTER(len=20) :: filename
    INTEGER :: nvals = 0
    TYPE (real_value), POINTER :: ptr   ! Temp pointer
    TYPE (real_value), POINTER :: tail  ! Pointer to tail of list 
    INTEGER :: istat    
    REAL :: temp                        ! Temp variable

    WRITE(*,*) 'Enter the file name with data to be read: '
    READ(*,'(A20)') filename

    OPEN (UNIT=9, FILE=filename, STATUS='OLD', ACTION='READ', &
        IOSTAT=istat )
    ! Confirm if file opened successfully
    fileopen: IF ( istat == 0 ) THEN      ! Open successful
        input: DO
            READ(9, *, IOSTAT=istat) temp
            IF ( istat /= 0 ) EXIT
            nvals = nvals + 1

            IF (.NOT. ASSOCIATED(head)) THEN  ! No values in list
                ALLOCATE (head,STAT=istat)    ! Allocate new value
                tail => head                  ! Tail points to new value
                NULLIFY (tail%p)              ! Nullify p in new value
                tail%value = temp             ! Store number
            ELSE
                ALLOCATE (tail%p,STAT=istat)  ! Allocate new value
                tail => tail%p                ! Tail points to new value  
                NULLIFY (tail%p)              ! Nullify p in new value
                tail%value = temp             ! Store number
            END IF
         END DO input 

        ! write data
         ptr => head
         output: DO
            IF ( .NOT. ASSOCIATED(ptr) ) EXIT  ! Pointer valid?
            WRITE (*, '(1X,F10.4)') ptr%value     ! If yes: write value
            ptr => ptr%p                       ! Get next pointer
         END DO output
                                        
        ELSE  fileopen
            ! Else fileopen failed, Tell user.
            WRITE (*,'(A,I6)') 'File open failed--status = ', istat
        END IF fileopen

END PROGRAM linked_list

