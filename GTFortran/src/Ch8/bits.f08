program bits 

    implicit none 
    integer :: b1100, b1010 
    character(len=*), parameter :: &
        form = "(a15, 4l2)"
    integer :: k 

    b1100 = ibset(ibset(0,3),2)
    b1010 = ibset(ibset(0,3),1)

    print *, "The integer value of b1100 is", b1100 
    print * 

    print form, "b1100", & 
        (btest(b1100, k), k = 3, 0, -1)
    print form, "b1010", &
        (btest(b1010, k), k = 3, 0, -1)
    print form, "Logical or", &
        (btest(ior(b1100, b1010), k), k = 3, 0, -1)
    print form, "Logical and", &
        (btest(iand(b1100,b1010), k), k = 3, 0, -1)

end program bits
