program subroutine_example 
        implicit none 
        integer :: a 
        a = 0 
        call add(a, 1) 
        print *, a 
        call add(a, 2) 
        print *, a        
   
     contains   ! define add subroutine here

       
    
end program subroutine_example 

