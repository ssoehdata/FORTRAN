program average
    implicit none
    real :: a, b, c, d
    read *, a, b, c, d
    print *, "Input data a:", a
    print*, "            b:", b
    print*, "            c:", c
    print*, "            d:", d
    print*, "Average =", (a + b + c + d) / 4
end program average
