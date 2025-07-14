!compute the amount of rebate 
! Rebates offered on following schedule: 80% on first $500, then 60% on next $400
! then 40% on next $300 spent on tuition. 

PROGRAM REBATE 

    IMPLICIT NONE
     
    REAL :: rebate_awarded, tuition   
    CHARACTER :: INPUT = ' '
    
    
    DO WHILE (INPUT .NE. 'Q') 

    PRINT *, "Enter the amount tuition paid."
    READ *, tuition
    print "(a, f15.2)", "You entered: ", tuition    
     

    IF (tuition > 0 .AND. tuition <= 500) THEN                   
        rebate_awarded = .80 * tuition 
        print "(a, f15.2)", "The employee's rebate is:", rebate_awarded  
    
    ELSE IF(tuition >= 501 .AND. tuition <= 901) THEN 
        rebate_awarded = (.60 * tuition) + 100
        print "(a, f15.2)", "The employee's rebate is:", rebate_awarded   
    
    ELSE IF(tuition >= 902 .AND. tuition <= 1202) THEN
        rebate_awarded = (.40 * tuition) +  280  ! (add 100 to 180 account for rebate in 501 to 901 range)
        print "(a, f15.2)", "The employee's rebate is:", rebate_awarded 

    ELSE IF(tuition >=1202) THEN
        rebate_awarded = tuition - 760.80
        print "(a, f15.2)", "The employee's balance to pay is:", rebate_awarded 

    END IF   
    
    WRITE(*,'(A,/,A)') "TO QUIT PROGRAM ENTER 'Q' (UPPER CASE ONLY) TO EXIT THE PROGRAM.", "ENTER ANY OTHER KEY TO CONTINUE."
    
    READ "(a)", INPUT    
        
    END DO
   

END PROGRAM REBATE
