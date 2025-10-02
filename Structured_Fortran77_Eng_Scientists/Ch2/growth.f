*%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        PROGRAM GROWTH 
* This program reads the initial population and the time 
* elapsed and then computes and prints thje predicted population.

        REAL YOLD, YNEW, TIME
*
        PRINT *, 'ENTER INITIAL POPULATION' 
        READ *, YOLD 
        PRINT *, 'ENTER TIME ELAPSED IN HOURS'
        READ*, TIME 
* 
        YNEW = YOLD*EXP(1.386*TIME)
*           
        PRINT 10, YOLD 
10      FORMAT (1X, 'INIITIAL POPULATION = ,'F9.4)
        PRINT 20, TIME 
20      FORMAT (1X,'TIME ELAPSED (HOURS) = ,'F9.4)
        PRINT 30, YNEW 
30      FORMAT (1X, 'PREDICTED POPULATION = ',F9.4)
*
        END 
