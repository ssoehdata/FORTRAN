! Excercise 4_2
! reads file and prints values to separate files 
! depending on whether the values are positive or negative 
program posneg
    implicit none 
    
! [x] read from pos-neg file
! [x] print pos to  one file (first print to screen as test)
! [x] print neg to different file
    integer :: a,b,c,d,e,f,g,h,i,j
    open(60,file='posit_neg.txt')
        read(60,*)a,b,c,d,e,f,g,h,i,j 
    ! print*, a,b,c,d,e,f,g,h,i,j      

    open(80,file='neg.txt')
    open(90,file='pos.txt')    
   
        
        IF (a < 0) THEN    
             write(80,*) a
             print*, a, 'is negative'        
        ELSE IF  (a > 0) THEN
            write(90,*)a
            print*, a, 'is positive'
        END IF
        
        IF (b < 0) THEN    
            write(80,*) b
            print*, b, 'is negative'           
        ELSE IF  (b > 0) THEN
            write(90,*)b
            print*, b, 'is positive'
        END IF
        
        IF (c < 0) THEN    
            write(80,*) c
            print*, c, 'is negative'           
        ELSE IF  (c > 0) THEN
            write(90,*)c
            print*, c, 'is positive'
        END IF
      
        IF (d < 0) THEN    
            write(80,*) d
            print*, d, 'is negative'           
        ELSE IF  (d > 0) THEN
            write(90,*)d
            print*, d, 'is positive'
        END IF

        IF (e < 0) THEN    
            write(80,*) e
            print*, e, 'is negative'           
        ELSE IF  (e > 0) THEN
            write(90,*)e
            print*, e, 'is positive'
        END IF

        IF (f < 0) THEN    
            write(80,*) f
            print*, f, 'is negative'           
        ELSE IF  (f > 0) THEN
            write(90,*)f
            print*, f, 'is positive'
        END IF

        IF (g < 0) THEN    
            write(80,*) g
            print*, g, 'is negative'           
        ELSE IF  (g > 0) THEN
            write(90,*)g
            print*, g, 'is positive'
        END IF

        IF (h < 0) THEN    
            write(80,*) h
            print*, h, 'is negative'           
        ELSE IF  (h > 0) THEN
            write(90,*)h
            print*, h, 'is positive'
        END IF

        IF (i < 0) THEN    
            write(80,*) i
            print*, i, 'is negative'           
        ELSE IF  (i > 0) THEN
            write(90,*)i
            print*, i, 'is positive'
        END IF

        IF (j < 0) THEN    
            write(80,*) j
            print*, j, 'is negative'           
        ELSE IF  (j > 0) THEN
            write(90,*)j
            print*, j, 'is positive'
        END IF

    print *, 'Operation Finished'      

end program posneg


