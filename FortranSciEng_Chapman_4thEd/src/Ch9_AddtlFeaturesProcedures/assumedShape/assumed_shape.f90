PROGRAM assumed_shape
 ! Purpose: 
 !      To illustrate the use of assumed shape arrays.

 USE test_module
 IMPLICIT NONE 
 REAL, DIMENSION(-5:5, -5:5) :: a = 0.0    ! Array a
 REAL, DIMENSION(10,2)  :: b = 1.0         ! Array b 
 
 PRINT *
 WRITE(*,*) 'Calling test_array with array a: '
 CALL test_array(a)
 PRINT *
 WRITE(*,*) 'Calling test_array with array b: '
 CALL test_array(b) 
 PRINT *

 END PROGRAM assumed_shape
