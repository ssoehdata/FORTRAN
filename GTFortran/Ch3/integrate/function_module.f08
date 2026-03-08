module function_module 

        implicit none 
        private 
        public :: f
	contains 
        function f(x) result(f_result)
            real, intent(in) :: x
            real             :: f_result 

            f_result = exp(-x**2.0)
        end function f
		
end module function_module


        
