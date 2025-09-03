! refactoring of av program to average 10 numbers 
program av2 
    implicit none 
    real, dimension(10) :: x 
    real                :: average, sum 
    integer             :: i 
    print *, 'Enter 10 numbers'
    sum=0.0 
    do i = 1,10
        read*, x(i) 
        sum=sum+x(i) 
    end do 
    average=sum/10 
    print *, 'The average is ',average 
    print*, 'The numbers are' 
    print*, x
    
end program av2
