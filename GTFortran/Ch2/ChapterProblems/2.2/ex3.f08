
program toll 

    implicit none 
    character(len=1) :: C, B, T,veh_class, weight_class    

    print *, "Enter type of vehicle class (C, B, or T)."
    read *, veh_class
    
    IF (veh_class == 'C') THEN 
        print *, "Enter if weight is < or > than 10,000 lbs."
        read *, weight_class
        print *, "Your toll is $3.00"        
    
        ELSE IF (veh_class == 'B') THEN 
            print *, "Enter if weight is < or > than 10,000 lbs."
            read *, weight_class
        
        IF (weight_class == '>') THEN 
                print *, "Your toll is $4.00"
        ELSE IF (weight_class == '<') THEN 
                print *, "Your toll is $4.00"          
        END IF  

        ELSE IF (veh_class == 'T') THEN 
            print *, "Enter if weight is < or > than 10,000 lbs."
            read *, weight_class
        IF (weight_class == '>') THEN 
                print *, "Your toll is $10.00"
            
        ELSE IF (weight_class == '<') THEN 
            print *, "Your toll is $6.00"            
        END IF  
    
    END IF
end program toll
