
!using array intrinsic fxns  (size,count)  

! continuing on with sections of arrays
!single dimensionl array

program array
    implicit none

    ! creating a one-dimesional array
    integer, dimension (50) :: onedim
    integer, dimension(10)  :: resultarray

    ! creating a two-dimensional array
    integer, dimension (10, 10) :: twodim       !10 rows, 10 columns

    ! initializing a 1-d array (syntax /n,n1,n2/)
    integer, dimension(5)       :: smallonedim = (/1,2,3,4,5/)

    ! initializing a 2-d array
    ! using the reshape function(takes 2 args) - data to be used
    ! shape - in this case 5,5 array
    integer, dimension(5,5)     :: smalltwodim = reshape((/1,1,1,1,1, &
                                                           2,2,2,2,2, &
                                                           3,3,3,3,3, &
                                                           4,4,4,4,4, &
                                                           5,5,5,5,5/), &
                                                           
                                                           shape (smalltwodim))


    real, dimension (5)     :: realArrayone
    real :: randomReal

    logical                 :: YesNo     

    integer                 :: i, j  

    print*, ' ' 
    print*, '*************************************************************'
    print*, "Arrays in one Dimension"
    print*, ' '

    onedim(1) = 999
    print*, onedim(1)
    print*, ' ' 

    ! use a do loop to access the array values

    print*,"Setting all values in the array to zero"
    print*, ' '

    do i = 1, size(onedim)    ! can use this for all arrays,                          
    
        onedim(i) = 0
    end do
    print*, ''

    do i = 1, size(onedim)
        print *, onedim(i)
    end do
    print*,'' 

    print*, ' '
    print*, "Setting real values in the array" 
    print*, ' '

    do i = 1, size(onedim)
        onedim(i) = i * 12
    end do 

    do i = 1, 50
        print *, onedim(i)
    end do 
    print*, ' '
        
    do i = 1, 10    ! the outer loop
        do j = 1,10 ! the inner loop
            call random_number(randomReal) 
            twodim(i, j) = (randomReal  * 1000)         
        end do
    end do 

    do i = 1, 10    
        do j = 1,10          
            write(*, '(i5)', advance = 'no') twodim(i, j)            
        end do
        print*,' '
    end do    
    
    
    do i = 1,50
            call random_number(randomReal)
        onedim(i) = randomReal * 100    
    end do    
    
    !onedim(1:25) = 0
    !onedim(26:50) = 99
    !onedim(28:) = 100  ! leaving 2nd position blank means until the end
    !do i = 1,50
        !print*,onedim(i)      
    !end do    

    i = count(onedim > 100)

    print*, ' '
    print *, "Total items in array greater than 100: ", i
    print*, ' '

    i = maxval(onedim)
    print *, "Maximum value in onedim is: ", i
    print*, ' '

    i = minval(onedim)
    print *, "Minimum value in onedim is: ", i
    print*, ' '

    i = sum(onedim)
    print*, "Sum of onedim array is:", i 
    print*, ''

    ! need to specify a section of the array for product (e.g. 1:5), 
    ! otherwise it will overload and return a 0
    i = product(onedim (1:5))
    print*, "Product of onedim array is:", i 
    print*, ''

    ! Boolean: below will return boolean for array value > 0
    YesNo = all(onedim > 0)
    print*, YesNo
    YesNo = any(onedim > 0)
    print*, YesNo
    print*, ''

    ! by stating DIM=1, if finds max value in each column
    ! if you use DIM=2 , it will find max value in each row
    print*, "Maximum value for each column in the array" 
    print*, ''
    resultarray = maxval(twodim, DIM=1)
    do i=1, 10        
        print*, resultarray(i)
    end do
    print*, ''
    print*, "Maximum value for each row in the array" 
    print*, ''
    resultarray = maxval(twodim, DIM=2)
    do i=1, 10        
        print*, resultarray(i)
    end do
    print*, ''

    print*, 'Sum for 2-dim array by column'
    print*, ''
    resultarray = sum(twodim, DIM=1)
    do i=1, 10
        print*, resultarray(i)
    end do
    print*, ''

    print*, 'Sum for 2-dim array by row'
    print*, ''
    resultarray = sum(twodim, DIM=2)
    do i=1, 10
        print*, resultarray(i)
    end do
    print*, ''

    print*, 'Printing small 1-dim array'
    print*,''
    do i=1,5
        print*,smallonedim(i)
    end do
    print*, ''

    print*, 'Printing small 2-D array initialization'
    print*, ''
    do i = 1,5
        do j = 1, 5
            write (*, '(i5)', advance='no') smalltwodim(i,j)                    
        end do
        print*, " "
    end do
    print*,''

    print*, 'Printing small 2-D array initialization row/column format'
    print*, ''
    do i = 1,5
        do j = 1, 5
            write (*, '(i5)', advance='no') smalltwodim(j,i)                    
        end do
        print*, " "
    end do
    print*,''


    ! get this to print neatly
    ! can also reshape the array 
    print*, 'Printing reshaped array'    
    print*,''
    smalltwodim = reshape((/ 2,2,2,2,2,3,3,3,3,3,4,4,4,4,4,5,5,5,5,5,6,6,6,6,6/),shape(smalltwodim))
    do i = 1,5
        do j = 1, 5
    write (*, '(i5)', advance='no') smalltwodim(j,i)
        end do
        print*,''            
    end do    
    print*,''   
     
    print*," "

    print*, "End Program array3"
    print*, ' '
    print*, '*********************************************************************'
    print*, ''

end program array

