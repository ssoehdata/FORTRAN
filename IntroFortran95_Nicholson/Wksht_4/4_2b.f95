! diff version of 4_2 
! iterate through the series as an array and print on separate files the neg and positive values
program posneg
    implicit none 
! [] create array for a:j values 
! [x] read from pos-neg file
! [] print pos to  one file (first print to screen as test)
! [] print neg to different file
    integer :: dimension(10) :: x 
    integer i
    !integer :: array1(10) 
    !integer, dimension(10) :: [a,b,c,d,e,f,g,h,i,j] :: x
    
    !print *, array1  
    x = (/a,b,c,d,e,f,g,h,i,j/)

    print *, x
    do i = 1, 10
        print *, a(i)
    end do

    !open(60,file='posit_neg.txt')
       ! read(60,*)a,b,c,d,e,f,g,h,i,j 
        !array1 = [a,b,c,d,e,f,g,h,i,j]
        
       
    ! print*, a,b,c,d,e,f,g,h,i,j      

    ! open(80,file='negA.txt')
    ! open(90,file='posA.txt')    
   
        
    !     IF (a < 0) THEN    
    !          write(80,*) a
    !          print*, a, 'is negative'        
    !     ELSE IF  (a > 0) THEN
    !         write(90,*)a
    !         print*, a, 'is positive'
    !     END IF        
    

!#############################################
        !integer, dimension(6) :: a
        !integer :: i
    
        !assign values to a
        !a(1) = 10
        !a(2) = 6
        !a(3:5) = 4
        !a(6) = 100
        ! better way
        !a = (/10, 6, 4, 4, 4, 100/)
        
        !do i = 1, 6
         !   print*, a(i)
        !end do
 !###################################     

    print *, 'Operation Finished'      

end program posneg


