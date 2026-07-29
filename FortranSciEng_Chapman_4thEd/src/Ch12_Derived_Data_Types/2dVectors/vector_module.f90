MODULE vector_module
!
!  Purpose:
!    To define the derived data type for 2D vectors,  
!    plus addition and subtraction operations.
!
IMPLICIT NONE

! Declare type vector
TYPE :: vector
   REAL :: x                         ! X value
   REAL :: y                         ! Y value
CONTAINS
   PROCEDURE,PASS :: vector_add
   PROCEDURE,PASS :: vector_sub
END TYPE vector

! Add procedures
CONTAINS

   TYPE (vector) FUNCTION vector_add ( v1, v2 )
   !
   !  Purpose:
   !    To add two vectors.
   IMPLICIT NONE
   
   ! Data dictionary: declare calling parameter types & definitions
   CLASS(vector),INTENT(IN) :: v1           ! First vector
   CLASS(vector),INTENT(IN) :: v2           ! Second vector

   ! Add the vectors
   vector_add%x = v1%x + v2%x
   vector_add%y = v1%y + v2%y

   END FUNCTION vector_add

   TYPE (vector) FUNCTION vector_sub ( v1, v2 )
   !
   !  Purpose:
   !    To subtract two vectors.

   IMPLICIT NONE
   
   ! Data dictionary: declare calling parameter types & definitions
   CLASS(vector),INTENT(IN) :: v1           ! First vector
   CLASS(vector),INTENT(IN) :: v2           ! Second vector

   ! Add the points
   vector_sub%x = v1%x - v2%x
   vector_sub%y = v1%y - v2%y

   END FUNCTION vector_sub

END MODULE vector_module
