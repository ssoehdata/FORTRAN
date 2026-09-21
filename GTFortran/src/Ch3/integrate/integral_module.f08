module integral_module

        implicit none 
        private 
        public :: integral 

 contains

         recursive function integral(f, a, b, tolerance) result(integral_result) 

            intrinsic :: abs 
            interface
                function f(x) result(f_result)
                    real, intent(in) :: x
                    real :: f_result
                end function f                
			end interface
			
			real, intent(in) 	:: a, b, tolerance 
			real 				:: integral_result
			real 				:: h, mid 
			real 				:: one_trapezoid_area, two_trapezoid_area
			real 				:: left_area, right_area
			
			h = b - a 
			mid = (a + b) / 2
			one_trapezoid_area  = h * (f(a) + f(b)) / 2.0 
			two_trapezoid_area = h/2 * (f(a) + f(mid)) / 2.0 + & 
								 h/2 * (f(mid) + f(b)) / 2.0
			if (abs(one_trapezoid_area - two_trapezoid_area) < 3.0 * tolerance) then 
				integral_result = two_trapezoid_area
					
			else 
				left_area = integral(f, a, mid, tolerance / 2)
				right_area = integral(f, mid, b, tolerance / 2) 
				integral_result = left_area + right_area
			end if
		end function integral 
                 
end module integral_module


