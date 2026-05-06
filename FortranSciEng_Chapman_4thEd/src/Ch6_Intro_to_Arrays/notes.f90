! Basics of arrays:

REAL, DIMENSION(16) :: voltage 

! Defines an array voltage of type real that contains 16 elements

! This could also be written this way:

REAL :: voltage(16) 

! This declaration style is for backward compatibility for earlier 
! versions of Fortran.

!********
! An array of 50 20-character-long elements can be declared as follows:

CHARACTER(len=20), DIMENSION(50) :: last_name 

! Each element would be last_name(1), last_name(2).... last_name(50)

!************************************************
! Array Terms and Definitions: 
! %%%%%%%%%%%%
! Rank: 
! %%%%%%%%%%%%
! The number of subscripts declared for a given array. 
! Both the voltage and last_name array examples are of rank 1 arrays.

! Subscript example: 
! A two-dimenionsal array of integers named matrix can be defined as follows: 

INTEGER, DIMENSION (5,5) :: matrix 

! Note the corresponding dual subcripts (5,5) for each of the two dimensions.
! %%%%%%%%%%%%%%
! Extent:
! %%%%%%%%%%%%%%
! The number of elements in a given dimension of an array.

! The extent of the first (and only) subscript of array last_name is 50.

CHARACTER(len=20), DIMENSION(50) :: last_name 

! Shape:
! %%%%%%%%%%%%%%%
! The shape of an array is defined as the combination of its rank and extent
! of the array in each dimension. 

! e.g. Two arrays have the same shape if they have the same rank and 
!     the same extent in each dimension. 

! Size: 
! %%%%%%%%%%%%%%%
! The total number of elements declared in that array. 
! For simple rank 1 arrays, the size of the array is the same as the extent
! of its single subscript. 

! e.g. The size of array last_name is 50.

! Array Constants:
! %%%%%%%%%%%%%%%
! Arrays consisting entirely of constants.

! Array Constructors: 
! %%%%%%%%%%%%%%%
! Array constants are notated by placing the constant values between 
! special delimiters ( "/" or "]"  ) named array contstructors: 

! Both examples below define an array constant containing five elements.

(/ 1, 2, 3, 4, 5 /)       ! older notation style (/ / )

[ 1, 2, 3, 4, 5 ]        ! newer style [ ]

! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
! Initialization:

! Three Methods for Array Initialization:
! 1. Using Assignment Statements 
! 2. In Type Declaration Statements at Compile Time 
! 3. Using READ Statements.

! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%