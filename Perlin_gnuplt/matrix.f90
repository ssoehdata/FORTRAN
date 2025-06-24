! matrix.f90
program main
    use :: perlin
    implicit none
    integer, parameter :: WIDTH  = 128
    integer, parameter :: HEIGHT = 64

    integer :: x, y
    real    :: r
    real    :: matrix(WIDTH, HEIGHT)

    ! Set Perlin noise seed.
    call random_seed()
    call random_number(r)
    call perlin_noise_seed(int(r * 10e6))

    ! Set Gnuplot options.
    print '(a)', 'set nokey'                           ! Disable legend.
    print '(a)', 'set cbtics scale 0'                  ! Disable colourbar tics.
    print '(a)', 'set title "Perlin Noise in Fortran"' ! Set title.
    print '(a)', 'set pm3d interpolate 2, 2'           ! Draw 3d data as colour map.
    print '(a)', 'splot "-" matrix with pm3d'          ! Plot matrix data in 3d.

    ! Calculate matrix values and print them to stdout.
    do y = 1, HEIGHT
        do x = 1, WIDTH
            matrix(x, y) = perlin_noise(real(x * .1), real(y * .1), 0.4, 8) * 100
            write (*, '(f8.5, " ")', advance='no') matrix(x, y)
        end do
        write (*, *)
    end do
end program main



!$ gfortran13 -c perlin.f90
!$ gfortran13 -o matrix matrix.f90 perlin.o
!$ ./matrix | gnuplot -p

! We do not need to run the example each time to display the plot. 
! Instead, redirect the output to a file first, then pipe the file contents to Gnuplot:

!$ ./matrix > data.txt
!$ cat data.txt | gnuplot -p
