program integrate 
        
        use function_module 
        use integral_module 
        use math_module, only : pi 
        implicit none 
        
        real :: x_min, x_max 
        real :: answer 
		
        x_min = -4.0 
        x_max = 4.0 
        answer = integral(f, x_min, x_max, tolerance = 0.01)
        print "(a, f11.6)", &
               "The integral is approximately ", answer 
        print "(a,f11.6)", "The exact answer is     ", sqrt(pi)
end program integrate
  
