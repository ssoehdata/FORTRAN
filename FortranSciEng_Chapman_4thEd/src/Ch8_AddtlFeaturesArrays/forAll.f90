! Example for FORALL construct 

! The FORALL construct allows for operations to be applied 
! on an element-by-element basis to a subset of the elements
! in the array. 

! The statements in the FORALL construct may be executed 
! in any order (vs. as example, a nested DO LOOP). 
! The execution order is determined by the processor.
! This can make them beneficial for parallel processing.

! If the body of the FORALL statement contains more than 
! one statement, all of the slected elements of the 
! first statement operations are completed before starting any of
! the elements of the second statement. 

! Example: 
! In this example a(i,.j) values are used to calculate b(i,j) in 
! the second statement. All of the a values are calculated 
! before the first b value is calculated. 

! FORALL (i=2:n-1, j=2:n-1)
!   a(i,j) = SQRT(a(i,j))
!   b(i,j) = 1.0 / a(i,j)
! END FORALL 

! The elements operated on may be chosen 
! both by subscript index and by a logical condition. 

! Operations will only be applied to those elements of the array 
! that satisfy both the index constraints and the logical condition.
! **************************************************************************
program forALL_test 

    implicit none 
    integer :: i, j 
    REAL, DIMENSION(10,10) :: i_matrix = 0.    

    FORALL (i = 1:10) 
        i_matrix(i,i) = 1.0 
    END FORALL
    
    print *, 'matrix', i_matrix    
    print *, 'ENDING PROGRAM' 
end program forAll_test