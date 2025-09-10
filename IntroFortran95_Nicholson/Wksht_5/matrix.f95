! basic matrix 

program matrix 
    implicit none 
    integer, dimension(5) :: i1,i2,i3
    integer, dimension(3,4) :: a 

    a = reshape([1,2,3,4,5,6,7,8,9,10,11,12], [3, 4])
    print '(4i3)', a(1,:)
    print '(4i3)', a(2,:)
    print '(4i3)', a(3,:)   


end program matrix 
