! Names can be assigned to loops.
! name can be up to 63 alphanumeric characters

! Syntax: 
! [name:] DO 
! Statement
! Statement 
! IF (logical_expr) CYCLE [name]
! ... 
! IF (logical_expr) EXIT   [name]
! END DO [name]
! **************************************************************
PROGRAM named_do_loop
    IMPLICIT NONE
    INTEGER :: i

    ! where [name:] can be up to 63 alphanumberic chars long

    cool1: DO i = 1, 5 
    IF ( i == 3) CYCLE 
    WRITE (*,*) i 
    END DO cool1
    WRITE (*,*) 'End of coo1l do loop' 
END PROGRAM named_do_loop 