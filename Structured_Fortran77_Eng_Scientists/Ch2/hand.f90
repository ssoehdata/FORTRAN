PROGRAM STRIDE 

! This program reads the length of a leg, and then 
! computes and prints the time required for a stride. 

    REAL LEG, PI, G, TIME 
    PARAMETER (PI=3.141593, G=32.0)

    PRINT*, 'ENTER THE LEG LENGTH IN FEET'
    READ*, LEG 

    TIME = PI*SQRT(2.0*LEG/(3.0*G))

    PRINT* 
    PRINT 5, TIME 
    5 FORMAT (1X, 'THE STRIDE TIME IS ',F5.2,' SECONDS')
    PRINT 6, LEG 
    6 FORMAT (1X, 'FOR A LEG LENGTH OF ',F5.2,' FEET')

END PROGRAM STRIDE