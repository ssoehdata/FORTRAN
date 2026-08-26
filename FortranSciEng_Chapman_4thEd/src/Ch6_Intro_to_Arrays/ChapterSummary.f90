! ***********************************************************
! *     Summary of Fortran Statements and Constructs        *
! ***********************************************************

! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
!   Type Declaration Statements with Arrays:    %
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    type, DIMENSION( [i1] : ] i2 ) :: array1, ...

 ! Examples:
    
    REAL,DIMENSION(100) :: array 
    INTEGER, DIMENSION(-5:5) :: i 

 ! Description: These type declaration statements declare both
 !              type and the size of an array.


!*********************************************

! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
!   Implied DO loop structure:           %
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    READ (unit,format) (arg1, arg2, ... , index = istart, iend, incr )
    WRITE (unit,format) (arg1,arg2, ... , index = istart, iend, incr )
    [ (arg1, arg2,... , index = istart, iend, incr) ] 

! Examples:
    
    WRITE(*,*) ( array(i), i = 1, 10 )
    INTEGER, DIMENSION(100) :: values
    values = [ (i, i = 1,100) ] 

! Description: The implied DO loop is used repeat the values in an argument
! list a known number of times. The values in the argument list may be functions
! of the DO loop index variable. During the first iteration of the DO loop, the 
! variable *index* is set to the value *istart*, *index* is incremented by *incr*
! in each successive loop until its value exceeds *iend*, at which time the
! the loop terminates. 
