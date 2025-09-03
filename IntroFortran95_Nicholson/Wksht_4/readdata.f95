! Reading from files
! reads 3 numbers from a .txt file into an array and prints them
program readdata 
    implicit none 
    ! reads data form a file called mydata.txt 
    real :: x,y,z 
    open(10,file='mydata.txt')  !  10 is and input device number(any arbitrary positive integer)
        read(10,*)x,y,z  
    print*, x,y,z 
end program  readdata 
