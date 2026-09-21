program tax_computation 
    implicit none 
    real :: income, tax 
    integer :: bracket 

    PRINT *, "Enter an Income."
    READ *, income 
    print "(a, f15.2)", "Input data income:", income 

    IF (income < 0) THEN
        PRINT *, "Income cannot be negative."
        
    ELSE IF (income > 81560) THEN 
        PRINT *, "Tax must be figured using worksheet."
       
    else 
        print * , "**** after first block and trailing else" ! debug
    ! Find appropriate range and compute tax
        IF (income==0) THEN
            tax = 0 
            bracket = 0 
        ELSE IF  (income>0 .AND. income<=17850) THEN 
            tax = 0.15 * income 
            bracket = 15 
        
        ELSE IF (income>17850 .AND. income<=43150) THEN 
            tax = 2677.50 + 0.28 * (income - 17850)
            bracket = 28 
        ELSE IF (income>43150  .AND. income<=81560) THEN 
            tax = 9761.50 + 0.33 * (income -43150)
            bracket = 33
        END IF 
        ! END of tax computation section 
        PRINT  "(a, f8.2, a, f8.2)", & 
            "The tax on $", income, " is $", tax 
        PRINT "(a, i2,a)", "This income is in the ", &
            bracket, "% tax bracket."
    END IF 
    
end program tax_computation 
