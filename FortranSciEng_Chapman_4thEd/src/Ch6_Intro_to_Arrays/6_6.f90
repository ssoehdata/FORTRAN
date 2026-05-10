! Example 6-6 
! Illustrate the effect of out-of-bounds array references with 
! and without bounds checking turned on.
! (IFX and GNU Fortran produce identical and similar error messages respectively) 

! with bound checking on (win OS environment flags):
! ifort -check file_name.f90 -o filename 

! Compiling without the -check flag will produce a binary that 
! will yield some erroneous values for the 6th array element 
!       (e.g. junk memory, next element in adjacent array etc., 
!       such as an array value of '0' for element a(6)
!       in this example for a(1) -a(5) ),
! whereas with bounds checking on, a descriptive error message with
! the results up to array element 6 are produced: 

! #######################################################################################################################
! Output with bounds checking on (ifort compiler)
! a(1) =   1.00
! a(2) =   2.00
! a(3) =   3.00
! a(4) =   4.00
! a(5) =   5.00
! forrtl: severe (408): fort: (10): Subscript #1 of the array A has value 6 which is greater than the upper bound of 5

! Image              PC                Routine            Line        Source
! boundCheck.exe     00007FF6A901116E  Unknown               Unknown  Unknown
! boundCheck.exe     00007FF6A904F0FB  Unknown               Unknown  Unknown
! boundCheck.exe     00007FF6A904F524  Unknown               Unknown  Unknown
! KERNEL32.DLL       00007FFF8CA4E8D7  Unknown               Unknown  Unknown
! ntdll.dll          00007FFF8D94C53C  Unknown               Unknown  Unknown
! ########################################################################################################################

! #######################################################################################################################
! Gnufortran(gfortran) produces similar error messaging: 
! a(1) =   1.00
! a(2) =   2.00
! a(3) =   3.00
! a(4) =   4.00
! a(5) =   5.00
! At line 44 of file 6_6.f90
! Fortran runtime error: Index '6' of dimension 1 of array 'a' above upper bound of 5
! ########################################################################################################################

PROGRAM bounds 
    IMPLICIT NONE 
! Declare and initialize the variables used
INTEGER :: i
REAL, DIMENSION(5) :: a = (/1., 2., 3., 4., 5./)
REAL, DIMENSION(5) :: b = (/10., 20., 30., 40., 50./)

! Write out the values of array a 
DO i = 1, 6 
    WRITE(*,100) i, a(i) 
    100 FORMAT ('a(',I1, ') = ', F6.2 )
END DO 

END PROGRAM bounds 
