! perlin.f90
!
! Perlin noise implementation in Fortran 2003.
! Generates noise values between -1.0 and 1.0.
!
! This Fortran code has been adapted from the following C version:
! https://gist.github.com/nowl/828013
!
! Author:      Philipp Engel
! Last Update: 2021-09-01
! Licence:     ISC
module perlin
    implicit none
    private

    integer, parameter :: DEFAULT_SEED = 0
    integer, parameter :: HASH(256) = [ &
        208,  34, 231, 213,  32, 248, 233,  56, 161,  78,  24, 140,  71,  48, 140, 254, &
        245, 255, 247, 247,  40, 185, 248, 251, 245,  28, 124, 204, 204,  76,  36,   1, &
        107,  28, 234, 163, 202, 224, 245, 128, 167, 204,   9,  92, 217,  54, 239, 174, &
        173, 102, 193, 189, 190, 121, 100, 108, 167,  44,  43,  77, 180, 204,   8,  81, &
         70, 223,  11,  38,  24, 254, 210, 210, 177,  32,  81, 195, 243, 125,   8, 169, &
        112,  32,  97,  53, 195,  13, 203,   9,  47, 104, 125, 117, 114, 124, 165, 203, &
        181, 235, 193, 206,  70, 180, 174,   0, 167, 181,  41, 164,  30, 116, 127, 198, &
        245, 146,  87, 224, 149, 206,  57,   4, 192, 210,  65, 210, 129, 240, 178, 105, &
        228, 108, 245, 148, 140,  40,  35, 195,  38,  58,  65, 207, 215, 253,  65,  85, &
        208,  76,  62,   3, 237,  55,  89, 232,  50, 217,  64, 244, 157, 199, 121, 252, &
         90,  17, 212, 203, 149, 152, 140, 187, 234, 177,  73, 174, 193, 100, 192, 143, &
         97,  53, 145, 135,  19, 103,  13,  90, 135, 151, 199,  91, 239, 247,  33,  39, &
        145, 101, 120,  99,   3, 186,  86,  99,  41, 237, 203, 111,  79, 220, 135, 158, &
         42,  30, 154, 120,  67,  87, 167, 135, 176, 183, 191, 253, 115, 184,  21, 233, &
         58, 129, 233, 142,  39, 128, 211, 118, 137, 139, 255, 114,  20, 218, 113, 154, &
         27, 127, 246, 250,   1,   8, 198, 250, 209,  92, 222, 173,  21,  88, 102, 219  &
    ]

    integer, save :: seed

    public :: perlin_noise
    public :: perlin_noise_seed
contains
    real function linear_interpolation(x, y, s)
        real, intent(in) :: x
        real, intent(in) :: y
        real, intent(in) :: s

        linear_interpolation = x + s * (y - x)
    end function linear_interpolation

    integer function noise(x, y)
        integer, intent(in) :: x
        integer, intent(in) :: y
        integer             :: xi, yi

        yi = 1 + modulo(    y + seed - 1, 256)
        xi = 1 + modulo(x + HASH(yi) - 1, 256)

        noise = HASH(xi)
    end function noise

    real function noise2d(x, y)
        real, intent(in) :: x
        real, intent(in) :: y
        integer          :: s, t, u, v
        integer          :: xi, yi
        real             :: low, high
        real             :: xf, yf

        xi = floor(x)
        yi = floor(y)

        xf = x - xi
        yf = y - yi

        s = noise(    xi,     yi)
        t = noise(xi + 1,     yi)
        u = noise(    xi, yi + 1)
        v = noise(xi + 1, yi + 1)

        low     = smooth_interpolation(real(s), real(t), xf)
        high    = smooth_interpolation(real(u), real(v), xf)
        noise2d = smooth_interpolation(low, high, yf)
    end function noise2d

    real function perlin_noise(x, y, freq, depth)
        real,    intent(in) :: x
        real,    intent(in) :: y
        real,    intent(in) :: freq
        integer, intent(in) :: depth
        integer             :: i
        real                :: a, d, f
        real                :: xa, ya

        xa = x * freq
        ya = y * freq

        a = 1.0
        f = 0.0
        d = 0.0

        do i = 1, depth
            d  = d + (256 * a)
            f  = f + (noise2d(xa, ya) * a)
            a  = a / 2
            xa = xa * 2
            ya = ya * 2
        end do

        perlin_noise = f / d
    end function perlin_noise

    real function smooth_interpolation(x, y, s)
        real, intent(in) :: x
        real, intent(in) :: y
        real, intent(in) :: s

        smooth_interpolation = linear_interpolation(x, y, s**2 * (3 - 2 * s))
    end function smooth_interpolation

    subroutine perlin_noise_seed(s)
        integer, intent(in), optional :: s

        if (present(s)) then
            seed = s
        else
            seed = DEFAULT_SEED
        end if
    end subroutine perlin_noise_seed
end module perlin
