program who
    implicit none
    character(len=40) :: whats_his_name

    print *, "Do I remember whatshisname?"
    read *, whats_his_name
    print *, "Of course, I remember ", whats_his_name
end program who

! When run, the program prints the question.
! When you input a name in double qoutes it will print
! that name without the qoutes -first and last
! if you enter a name without the qoutes it only prints
! the first name  of the string

! using read *,  is a method to print strings when
! you enter the string in "  "  as input
! You only need to observe the len = limit for characters 