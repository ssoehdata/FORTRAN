*--------------------------------------------------------------------*
      PROGRAM RCKET2
*
*     This program simulates a rocket flight up to 100 seconds.
*     A table contains height values at increments of 2 seconds until
*     the rocket is within 50 feet of the ground. Within 50 feet
*     of the ground, the height values are computed every 0.05 seconds.
*
      REAL TIME, HEIGHT
      LOGICAL DONE
*
      TIME = 0.0
      HEIGHT = 60.0
      DONE = .FALSE.
*
      PRINT 5
 5    FORMAT (1X,'TIME (s) HEIGHT (FT)')
      PRINT *
*
 10   IF (.NOT.DONE) THEN
          HEIGHT = 60.0 + 2.13*TIME**2 - 0.0013*TIME**4
     +           + 0.000034*TIME**4.751
          PRINT 15, TIME, HEIGHT
 15       FORMAT (1X,F7.4,8X,F9.4)
          IF (HEIGHT.LT.50.0) THEN
              TIME = TIME + 0.05
          ELSE
              TIME = TIME + 2.0
          END IF
          DONE = HEIGHT.LE.0.0.OR.TIME.GT.100.0
          GO TO 10
      END IF
*
      END
*-------------------------------------------------------------------*
