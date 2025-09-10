program alloc 
    implicit none 
    integer, allocatable,dimension(:) :: vector  ! tells the compiler the array is allocatable
    ! note syntax - dimension(:) 
    integer :: elements, i 
    print *, 'Enter the number of elements in the vector.'
    read *, elements 
    allocate(vector(elements))      ! allocates the correct amount of memory
    print *, 'Your vector is of size ',elements,'. Now enter each element.'
    do i = 1, elements 
        read *, vector(i) 
    end do 
    print*, 'This is your vector'
    do i=1, elements 
        print *, vector(i)
    end do 
    deallocate(vector)                ! tidies up the memory 
end program alloc 
