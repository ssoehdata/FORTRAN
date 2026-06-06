PROGRAM Half_Adder 
! ---------------------------------------------------------------------------
! Program to calculate the outputs from a logical circuit that
! represents a binary half-adder. Variables used are: 
!       A, B       : the two logical inputs to the circuit 
!       Sum, Carry : the two logical outputs
!
! Input:        The two logical inputs A and B 
! Output:       The two logical outputs Sum and Carry, which represent the 
!               sum and carry that result when the input values are added 
! ---------------------------------------------------------------------------

        IMPLICIT NONE 
        LOGICAL :: A, B, Sum, Carry 

        PRINT*       
        PRINT *, "Enter logical inputs A and B:" 
        READ *,  A, B 
        Sum = (A .OR. B) .AND. .NOT. (A .AND. B) 
        Carry = A .AND. B 
        PRINT *, "Carry, Sum =", Carry, Sum 
        PRINT *

END PROGRAM Half_Adder
             
