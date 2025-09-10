! 
!       integer :: col,row
!       real :: ra(10,10)
!       !using do loop
!       do row = 1,10
!          do col = 1,10
!            read *,      ra(row,col)
!            write(*,*)   ra(row,col)
!          end do
!       end do


! The above method for input and output of arrays is that 
! rows and columns are not preserved on ouput. 
! An alternative method is to use an implied DO LOOP in the write statement: 


program implied
    implicit none 

    real :: ra(4,4)
    integer :: row, col 
    print *, 'Enter 16 numbers (one per line in terminal) for a 4 x 4 array'
    do row = 1,4 
        do col = 1,4 
            read *,   ra(row,col)
        end do 
    end do 
    do row = 1,4 
        write(*,10) (ra(row,col),col=1,4)
    end do 
    10 format(10f5.1)
 

end program implied 
