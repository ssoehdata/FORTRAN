program threedra
    implicit none 
    real (kind=ikind),dimension(10,20,30) :: b 
    integer :: row,col, count
    count = 0.0 

    do row=1,2,3
        count=0
        do col=1,3,4
            count =count+1 
            a(row,col)=count 
        end do 
    end do








end program threedra