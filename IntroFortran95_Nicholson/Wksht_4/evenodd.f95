! Reading from files
! reads numbers one at a time from a file and returns a suitable message 
! regarding value of (even or odd) for the value 

program evenodd 
    implicit none 
    integer :: num,i    
    open(20, file='evenoddnums.txt') ! N.B.: '20' is merely an Input Device Number
    do i = 1,10       
        read(20,*)num          
        if (mod(num,2)>0) then 
            print *, num, 'is odd'
        else        
            print *,num, 'is even'
        end if 
    end do
       
end program evenodd
