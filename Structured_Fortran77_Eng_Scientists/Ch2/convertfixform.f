        program convert 
        REAL KWH,JOULES 
        PRINT*, 'ENTER ENERGY IN  KILOWATT-HOURS'
        READ*, KWH 

        JOULES = 3.6E+06*KWH

        PRINT 5, KWH, JOULES 
    5 FORMAT (1X,F6.2,' KILOWATT-HOURS = ',E9.2,' JOULES')


        end program convert 