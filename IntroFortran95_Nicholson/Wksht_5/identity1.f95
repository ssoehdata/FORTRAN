program identity1    
    implicit none
    integer  ,dimension(4,4) ::ra
    integer                   i,row,col
    ra=0
    do i=1,4
       ra(i,i)=1
    end do   
    do row=1,4
       write(*,10) (ra(row,col),col=1,4)
    end do
    10 format(4i3)    
    end program identity1
