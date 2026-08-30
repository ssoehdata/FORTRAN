! Figure 8-5

PROGRAM generate 
!
! Purpose:
!       To calculate total instantaneous power supplied by
!       a generating station at each instant of time,
!       and to calculate the average power supplied
!       by each generator over the period of measurement.
!

    IMPLICIT NONE 
    INTEGER,PARAMETER :: MAX_GEN = 4
    INTEGER,PARAMETER :: MAX_TIME = 6

    CHARACTER(len=20) :: filename 
    INTEGER :: igen
    INTEGER :: itime
    CHARACTER(len=80) :: msg
    REAL,DIMENSION(MAX_TIME, MAX_GEN) :: power 
    REAL, DIMENSION(MAX_TIME) :: power_ave 
    REAL, DIMENSION(MAX_TIME) :: power_sum
    INTEGER :: status

    ! Initialize sums to zero
    power_ave = 0.0
    power_sum = 0.0 

    WRITE(*,1000) 
    1000 FORMAT ('Enter the file containing the input data: ')
    READ(*, '(A20)') filename

    OPEN (UNIT=9, FILE=filename, STATUS='OLD', ACTION='READ', &
          IOSTAT=status, IOMSG=msg )
    
    fileopen: IF ( status == 0 ) THEN 
        READ (9, *, IOSTAT=status) power

    ! Calculate the instantaneous output power of the station at
    ! each time
    sum1: DO itime = 1, MAX_TIME
        sum2: DO igen = 1, MAX_GEN 
            power_sum(itime) = power(itime, igen) + power_sum(itime)
        END DO sum2
   END DO sum1

   ! Calculate the average output power of each generator over the
   ! time being measured.
   ave1: DO igen = 1, MAX_GEN 
        ave2: DO itime = 1, MAX_TIME
            power_ave(igen) = power(itime,igen) + power_ave(igen)
        END DO ave2
        power_ave(igen) = power_ave(igen) / REAL(MAX_TIME)
  END DO ave1

  ! Tell user 
  out1: DO itime = 1, MAX_TIME
    WRITE(*,1010) itime, power_sum(itime)
    1010 FORMAT ('The instantaneous power at time: ', I1, ' is ', &
        F7.2, ' MW.')
    END DO out1

    out2: DO igen = 1, MAX_GEN
        WRITE(*, 1020) igen, power_ave(igen)
        1020 FORMAT ('The average power of generator ', I1, ' is ', &
                    F7.2, ' MW.')
     END DO out2
    ELSE fileopen
        ! Else file open failed. Tell user.
        WRITE(*,1030) msg
        1030 FORMAT ('File open failed: ', A) 
          
  END IF fileopen

  END PROGRAM generate
