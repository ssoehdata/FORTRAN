! continuing on with sections of arrays
!single dimensionl array

program array
    implicit none

    ! creating a one-dimesional array
    integer, dimension (50) :: onedim
    integer, dimension(10)  :: resultarray

    ! creating a two-dimensional array
    integer, dimension (10, 10) :: twodim       !10 rows, 10 columns

    real, dimension (5)     :: realArrayone
    real :: randomReal

    integer                 :: i, j  
      

    print*, "Arrays in one Dimension"

    onedim(1) = 999
    print*, onedim(1)    

    ! use a do loop to access the array values

    print*,"Setting all values in the array to zero"
    
    !onedim(1:50) = 0  ! an alternate way to set elements 1 -50 to zero vs below
    do i = 1, size(onedim)    ! can use this for all arrays, 
                           ! so we only need to change the array size at top in line 8
    !do i = 1, 50   replaced by onedim(1:50) or size(onedim)
        onedim(i) = 0
    end do

    do i = 1, size(onedim)
        print *, onedim(i)
    end do 

    print*, "Setting real values in the array"    

    do i = 1, size(onedim)
        onedim(i) = i * 12
    end do 

    do i = 1, 50
        print *, onedim(i)
    end do 

        
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
    ! create a 1-d array w random reals
    ! and accessing only part of it

    
    do i = 1,50
            call random_number(randomReal)
        onedim(i) = randomReal * 1000    
    end do    
    
    onedim(1:25) = 0
    onedim(26:50) = 99
    onedim(28:) = 100  ! leaving 2nd position blank means until the end
    do i = 1,50
        print*,onedim(i)      
    end do

    ! going outside the bounds of the array will give a warning (but will/ might run)
    ! onedim(51) = 22

    print*, "End Program"

end program array