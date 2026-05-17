PROGRAM output_example
    
    INTEGER :: ix
    REAL    :: theta 
    ix   = 1
   ! test = .TRUE. 
    theta = 3.141593
    WRITE(*,*) ' 1X =           ', ix 
    WRITE(*,*) ' THETA =        ', theta
    WRITE(*,*) ' COS(THETA)     ', COS(theta) 
    WRITE(*,*) REAL(ix), NINT(theta)
END PROGRAM output_example    
    
