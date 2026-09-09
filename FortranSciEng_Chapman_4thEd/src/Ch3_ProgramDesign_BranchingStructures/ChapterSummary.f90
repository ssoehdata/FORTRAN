! --------------------
! Block IF Construct 
! --------------------

    [name:] IF (logical_expr_1) THEN 
        Block 1
    ELSE IF (logical_expr_2) THEN 
        Block 2
    ELSE [name]
        Block 3
    END IF [name] 

    ! ************************************
    ! -----------------
    ! CASE Construct  
    ! -----------------
        [name:] SELECT CASE (case_expr)
        CASE (case_selector_1) [name] 
            Block 1
        CASE (case_selector_2) [name]
            Block 2 
        CASE DEFAULT [name]
            Block n 
        END SELECT [name] 

   ! ***************************************

   ! ------------------
   ! LOGICAL Statement
   ! ------------------
        LOGICAL :: variable_name[, variable_name2, etc. ]

   ! Examples: 
        LOGICAL :: initialize, debug 
        LOGICAL :: debug = .false. 

  ! ****************************************
 
  ! --------------------------
  ! Logical IF Statement 
  ! -------------------------- 
        IF ( logical_expr) statement 

