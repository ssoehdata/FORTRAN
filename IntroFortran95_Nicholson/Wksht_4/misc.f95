
! from gnu documentation gfortran

program real_kinds
    integer,parameter :: p6 = selected_real_kind(6)
    integer,parameter :: p10r100 = selected_real_kind(10,100)
    integer,parameter :: r400 = selected_real_kind(r=400)
    real(kind=p6) :: x
    real(kind=p10r100) :: y
    real(kind=r400) :: z
  
    print *, precision(x), range(x)
    print *, precision(y), range(y)
    print *, precision(z), range(z)
  end program real_kinds


  ! RESULT = SELECTED_REAL_KIND([P,R,RADIX])
  ! P = precision of at least P digits 
  ! R = exponent range of at least R 
  ! RADIX = radix of radix 

  ! Priort to Fortran 2008 at least one of the args R or P shall be present,
  ! since Fortran 2008, they are assumed to be zero if absent. 
