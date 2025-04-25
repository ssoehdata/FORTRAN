!> \\file mainProg.f
! https://fortranwiki.org/fortran/show/Compiling+and+linking+modules
program testing
    use math_module
    implicit none
  
    print *, "pi:", pi, "e:", e, "gamma:", gamma  
  
end program testing