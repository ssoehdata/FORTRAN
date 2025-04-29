! This program demonstrates the tab operator for formatting.
PROGRAM tab

! The Tn tab specification allows you to shift directly to a specified position.
500 FORMAT (58X, 'EXPERIMENT No. 1')
! commenting format line w same number out for compiling
!500 FORMAT (T59, 'EXPERIMENT No. 1') 
!
! The following are also equivalent: 
550 FORMAT (1X,'SALES', 10X,'PROFIT', '10X', 'LOSS')
!550 FORMAT(1X, 'SALES', T17,'PROFIT',T33,'LOSS') 

! TLn and TRn specifications tab left or right for n positions from the 
! current position. The following formats are equivalent: 

!85 FORMAT (1X,25X,'HEIGHT',5X,'WEIGHT')
85 FORMAT (T27,'HEIGHT',TR5,'WEIGHT')

! Note: Repetition: 
! The following format I2,I2,I2
! can be replaced with 3I2
!
! Example 
! 900 FORMAT (3X,I2,3X,I2)
! 900 FORMAT (2(3X,I2))

print*,'TEST OUTPUT'
END PROGRAM tab