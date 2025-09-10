program identb   
    implicit none
    integer  ,dimension(4,4) ::dude
    integer                   i,row,col
    dude=0
    do i=1,4
       dude(i,i)=1
    end do   
    do row=1,4
       write(*,10) (dude(row,col),col=1,4)
    end do
    10 format(4i3)    !  number after "i" determines width of output on screen
                      !  number before "i" determines number of columns
    end program identb
