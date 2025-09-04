! from page 152 




subroutine solve_linear_equations(a, x, b, error)

    real, dimension(:,:), intent(in)    :: a 
    real, dimension(:), intent(out)     :: x 
    real, dimension(:), intent(in)      :: b
    logical, intent(out)                :: error 
    real, dimension(:,:), allocatable   :: m
    
    integer, dimension(1) :: max_loc 
    real, dimension(:), allocatable     :: temp_row 
    integer                             :: n, k 

    error = size(a, dim=1)  /= size(b) .OR.  & 
            size(a, dim=2)  /= size(b) 
    if (error) then 
        x = 0.0 
        return 
    end if 

    n = size(b)
    allocate (m(n, n+1), temp_row(n+1)) 
    m(1:n, 1:n) = a 
    m(1:n, n+1) = b 

    ! Triangularization phase 
    triang_loop: do k= 1, n 

        max_loc = maxloc(abs(m(k:n, k))) 
        temp_row(k:n+1) = m(k, k:n+1)
        m(k, k:n+1) = m(k-1+max_loc(1), k:n+1) 
        m(k-1+max_loc(1), k:n+1) = temp_row(k:n+1)


        if (m(k, k)  == 0) then 
            error = .TRUE. 
            exit triang_loop 
        else 
            m(k, k:n+1) = m(k, k:n+1) / m(k, k)
            m(k+1:n, k+1:n+1) = m(k+1:n, k+1:n+1) - & 
                spread(m(k, k+1:n+1), 1, n-k) * & 
                spread(m(k+1:n, k), 2, n-k+1)
        end if 
    end do triang_loop 

    ! Back substitution phase 

    if (error) then 
        x = 0.0 
    else 
        do k = n, 1, -1 
            x(k) = m(k, n+1) - sum(m(k, k+1:n) * x(k+1:n))
        end do 
    end if 

    deallocate (m, temp_row)

end subroutine solve_linear_equations


