! case study Heat transfer 1

! A simple solution to the heat transfer problem 
! using arrays and the associate construct 

program heat 

    implicit none 
    integer, parameter :: p = 10 
    real, dimension(P, P), target :: plate 
    real, dimension(P -2, P -2)   :: temp 
    real, parameter :: tolerance = 1.0e-4
    character(len=*), parameter :: plate_format = "(10f5.2)"

    real    :: diff 
    integer :: i,j, niter 

    ! set up initial conditions 
    plate = 0 
    plate(:, 1) = 1.0  ! boundary values 
    plate(1,:)  = [ (real(j)/P, j = P, 1, -1)]

    ! Alias parts of the plate 
    associate (inside => plate(2:P-1, 2:P-1), & 
                    n => plate(1:P-2, 2:P-1), &
                    s => plate(3:P,   2:P-1), &
                    e => plate(2:P-1, 1:P-2), &
                    w => plate(2:P-1, 3:P))

    ! Iterate 
    niter = 0
        do 
            temp = (n + e + s + w) / 4.0 
            diff = maxval(abs(temp-inside))
            niter = niter + 1 
            inside = temp 
            print *, niter, diff 
            if (diff < tolerance) exit 
        end do 
    end associate 

    do i = 1, min(P, 10)
        print plate_format, plate(i, :)
    enddo 

end program heat 
