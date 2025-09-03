! Writing to files 
program io2
     
    ! illustrates writing arrays to files 
    implicit none
    real :: num 
    integer :: i 
        open(12,file='myoutput.txt')
    do i = 1,100
    num = i/3.0
        write(12,*) num 
    end do 
    print *, 'FINISHED'
    
end program io2