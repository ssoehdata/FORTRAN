            PROGRAM RELY 
* This program reads the reliability of a single processor 
* and the number of components in series in a piece of equipment.
* It then computes and prints the reliability of the 
* equipment using a Bernoulli equation. 

            INTEGER N 
            REAL P, PERC
*
            PRINT*, 'ENTER RELIABILITY OF SINGLE COMPONENT'
            PRINT*, '(USE PERCENTAGE BETWEEN 0.0 AND 100.0)'
            READ*, P 
            PRINT*, 'ENTER NUMBER OF COMPONENTS IN EQUIPMENT'
            READ*, N 
*           
            PERC = (P/100.0)**N*100.0
*       
            PRINT*, 'PERCENT OF THE TIME THAT THE EQUIPMENT'
            PRINT 5, PERC 
    5 FORMAT (1X,'SHOULD WORK WITHOUT FAILURE IS ',F6.2,' %')
*   
            END 

            




        