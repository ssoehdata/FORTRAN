

PROGRAM area_triangles
    IMPLICIT NONE  
    REAL :: b1,h1,b2,h2,Ar1,Ar2 
    CHARACTER :: response 
    DO
    PRINT *, "Enter the base and height for two triangles"
    READ *, b1,h1,b2,h2
    CALL area(b1,h1,Ar1)
    CALL area(b2,h2,Ar2)
    WRITE(*,10) 'The areas of triangles are ',Ar1,Ar2
    WRITE(*, 10) 'The difference in the areas of the triangles is, ',abs(Ar1-Ar2)    
    10     format(a,2f10.3)
    PRINT *, 'Continue with calculations? Enter Y for yes, otherwise enter any key to quit'
    READ *, response     
      
    IF (response /= 'Y' .AND. response  /= 'y') STOP
    END DO 
END PROGRAM area_triangles

SUBROUTINE area(b,h,Ar)
    IMPLICIT NONE 
    REAL :: b,h,Ar    
    Ar=((0.5)*(b*h))

END SUBROUTINE area
