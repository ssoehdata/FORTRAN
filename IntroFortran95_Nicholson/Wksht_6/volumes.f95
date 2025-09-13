! Calculates the differences in volume of 2 spheres 

program volumes
    implicit none 
    real :: rad1, rad2, vol1, vol2 
    character :: response 
    DO 
    PRINT *, 'Please enter the two radii'
    READ *, rad1,rad2 
    CALL volume(rad1,vol1)
    CALL volume(rad2,vol2)
    WRITE (*,10) 'The difference in volumes is, ',abs(vol1-vol2)
    10      format(a,2f10.3)
    PRINT *, 'Any more? -hit Y for yes, otherwise hit any key'
    READ *, response 
    IF (response /= 'Y' .AND. response /= 'y') STOP 
    END DO 
    

end program volumes 


subroutine volume(rad,vol)
    implicit none 
    real :: rad,vol,pi 
    ! calculates the volume of the sphere 
    pi = 4.0*atan(1.0)
    vol=4./3.*pi*rad*rad*rad 
    ! It's a little quicker in processing to do r*r*r* than r**3! 
end subroutine volume 


!%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

! Notes on subroutines: 

! All variables must be declared 
! Use IMPLICIT NONE 
! Several subroutines can be used in a given program 
! Subroutines should perform a specific task and have a name that reflects that task
! Argument positionine is important (in this example rad and vol). It is 
!       vital that the argugments agree in both position and type. So, if an 
!       argument to the subroutine is real in the main program, it must also 
!       be real in the subroutine.
! If an argument in the subroutine is an array, it must also be declared  as an
!  array in the subroutine.

!%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
