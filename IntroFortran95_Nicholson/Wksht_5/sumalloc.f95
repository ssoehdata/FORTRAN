program sumalloc
    implicit none
    real, allocatable      ::a(:),b(:)
    integer                 ::imax,i
    
    
    
    print *, 'How many numbers?'
    read  *, imax
    allocate(a(imax),b(imax))
    
    print *, 'now enter ',imax,' numbers for the first array'
    
    do i=1,imax                     
       read *,a(i)          
    end do
    
    print *, 'now enter ',imax,' numbers for the second array'
    
    do i=1,imax                     
       read *,b(i)          
    end do
    
    print *,'first    second     (first+second)'
    do i=1,imax
        print *, a(i),b(i),a(i)+b(i)
    end do    
    
    
    
    deallocate(a,b)  
    end program sumalloc
    