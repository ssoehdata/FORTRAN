! S. 223 
program find_loc 
    
    implicit none 
    intrinsic :: findloc 

    real, dimension (3,3) :: x =  & 
        reshape (                 &
            [-11,  12,  13,       &
              21,  22,  -23,      &
              31, -32,  -33],     &
            [3, 3], order = [ 2, 1])
        
        logical, parameter :: T = .TRUE. 

        print *, findloc(x>0, T)          ! = [2, 1]
        print *, findloc(x>0, T, back=T)  ! = [2, 2]
        print *, findloc(x>0, T, dim=2)   ! = [2, 1, 1]

end program find_loc