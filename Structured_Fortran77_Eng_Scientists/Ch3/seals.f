*---------------------------------------------------------------------*
      PROGRAM SEALS
*
*  This program analyzes data on batches of sutures that have not
*  been properly sealed and then prints a report.
*
      INTEGER COUNT, REJCTT, REJCTP, REJCTD, BATCH
      REAL TEMP, PRESSR, DWELL, PERCT, PERCP, PERCD
*
      COUNT = 0
      RECJCT = 0
      REJCTP = 0
      REJCTD = 0
*
      PRINT*,'ENTER BATCH NUMBER, TEMPERATURE, PRESSURE, DWELL'
      PRINT*,'FOR BATCHES THAT HAVE BEEN REJECTED'
      PRINT*,'(NEGATIVE BATCH NUMBERS TO STOP)'
      READ*,  BATCH, TEMP, PRESSR, DWELL
*
   5  IF (BATCH.GE.0) THEN
         IF (TEMP.LT.150.OR.TEMP.GT.170.) REJCTT = REJCTT + 1
         IF (PRESSR.LT.60.0.OR.PRESSR.GT.70.0) REJCTP = REJCTP + 1
         IF (DWELL.LT.2.0.OR.DWELL.GT.2.5) REJCTD = REJCTD + 1
         COUNT = COUNT + 1
         PRINT*, 'ENTER NEXT SET OF DATA'
         READ*, BATCH,TEMP, PRESSR,DWELL
         GO TO 5
      END IF
*
      PERCT = REAL(REJCTT)/REAL(COUNT)*100.0
      PERCP = REAL(REJCTP)/REAL(COUNT)*100.0
      PRECD = REAL(REJCTD)/REAL(COUNT)*100.0
*
      PRINT*
      PRINT*, 'SUMMARY OF BATCH REJECT INFORMATION'
      PRINT*
      PRINT 10, PERCT, PERCP, PERCD
  10  FORMAT (1X,F7.1,' % REJECTED DUE TO TEMPERATURE'/
     +        1X,F7.1,' % REJECTED DUE TO PRESSURE'/
     +        1X,F7.1,' % REJECTED DUE TO DWELL')
*
      END
