!      List-Directed input/output demonstration     
       PROGRAM input_output
       IMPLICIT NONE
       integer :: num_students,num1,num2

       print*; print*
       print*,'Enter the number of students'
       read*,num_students
       print*
       print*,'The number of students is: ',num_students

!      OR

       print*; print*
       write(*,*)'enter 2 numbers'
       read(*,*)num1,num2
       print*,'number1 = ',num1,'   number2 = ',num2

       END PROGRAM input_output