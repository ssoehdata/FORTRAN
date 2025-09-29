        PROGRAM DATE 
! This program estimamtes and prints the age of an artifact 
! from the proportion of carbon 14 remaining in the artifact. 

        REAL CARBON, AGE 
        PRINT*, 'ENTER PROPORTION REMAINING FOR CARBON DATING'
        READ *, CARBON 

        AGE = (-LOG(CARBON))/0.0001216

        PRINT 5, AGE 
    5 FORMAT (1X, 'ESTIMATED AGE OF ARTIFACT IS ',F6.1,', YEARS')

        END 
        