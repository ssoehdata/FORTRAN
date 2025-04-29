PROGRAM PIPE 
! This program reads the indices of refraction for two materials 
! forming a light pipe. It also reads the angle of incidence for 
! light striking the pipe and determines if it is transmitted. 

    REAL N1, N2, ANGLE, CRTCL 

    PRINT *, 'ENTER INDEX  OF REFRACTION FOR ROD' 
    READ *, N1 
    PRINT *, 'ENTER INDEX OF REFRACTION FOR SURROUNDING MEDIUM'
    READ *, N2 
    PRINT *, 'ENTER ANGLE OF TRANSMISSION OF LIGHT IN DEGREES'
    READ *, ANGLE 

    IF (N2.GT.N1) THEN 
        PRINT*, 'LIGHT IS NOT TRANSMITTED'
    ELSE
        CRTCL = ASIN(N2/N1)*(180.0/3.141593)
        IF (ANGLE.GT.CRTCL) THEN 
            PRINT*, 'LIGHT IS TRANSMITTED'
        ELSE
            PRINT*, 'LIGHT IS NOT TRANSMITTED'
        END IF 
    END IF 

    END 
    