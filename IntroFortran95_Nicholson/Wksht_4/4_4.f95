! Extending the precision from 6 (single precision, which is the default) to 15
program extended 
    implicit none 
    integer, parameter :: ikind=selected_real_kind(p=15) ! precision to 15 places
    real (kind=ikind) :: sum, x 
    integer :: i 
    sum=0.0 

    do i = 1, 100 
        x=i 
        sum = sum + 1.0/(x**6) 
    end do 
    print *, sum 
    
end program extended 


! valid p (precision) values are 6, 15, and 18. 

! ikind is datatype parameter 
