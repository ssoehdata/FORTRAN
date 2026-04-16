PROGRAM my_first_program
! Purpose: 
! To illustrate some of the basic features of a Fortran program.
! Program is divided into 3 sections: 
!  	Declaration Section - group of nonexecutable statements that define the 
!   					name of the program, and the number and types of variables referenced 
!						in the program.
!   Execution Section- consists of one or more statements describing the actions to be performed 
!  						by the program.
!	Termination Section - consists of a statement or statements stopping the execution
!						  of the program and telling the compiler that the program is complete.
!
!       Declare the variables used in this program
        INTEGER :: i, j, k  ! All variables are integers 
!
!       Get two values to stor in variables i and j 
        WRITE (*, *) 'Enter the numbers to multiply:' 
        READ (*, *) i, j 
!
!       Multiply the numbers together 
        k = i * j 
!       Write out the result 
        WRITE (*, *) 'Result = ', k 
!       Finish up. 
        STOP
        END PROGRAM my_first_program 


        
        
        

        
