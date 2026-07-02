!*******************************************************
! Module Use to Declare Variables

MODULE variables
IMPLICIT NONE
INTEGER, PARAMETER :: NTIME=300
REAL, PARAMETER :: g=9.81
REAL, PARAMETER :: PI=4.0*ATAN(1.0)
REAL, DIMENSION(NTIME) :: x, y 
REAL :: v0, u0, t, mph, angle, mps
END MODULE variables
!********************************************************

!PROGRAM to compute the flight path of a baseball w/o spin or drag.
PROGRAM ball_flight_path
USE variables
IMPLICIT NONE
INTEGER :: i

WRITE(*,*)
WRITE(*,'(A)',ADVANCE='NO')'Enter the baseball velocity in mph (typically 100 mph):'
READ(*,*)mph
WRITE(*,'(A)',ADVANCE='NO')'Enter angle leaving the bat (typically 12 deg.):'
READ(*,*)angle
WRITE(*,*)

mps=0.44704*mph       !convert to m/s
angle=angle*PI/180.   !convert to radians
u0=mps*COS(angle)     !initial horizontal velocity
v0=mps*SIN(angle)     !initial vertical velocity

DO i=1,NTIME 
   t=REAL(i)/100.    !time in seconds; 0.01 second spacing
   y(i)=v0*t-0.5*g*t**2
   IF(y(i) <= 0.0)EXIT
   x(i)=u0*t
   WRITE(*,100)t, x(i), y(i)
END DO
100 FORMAT(1X,'Time= ',f6.2,3X,'x= ',f6.1,3X,'y= ',f6.1)
END PROGRAM ball_flight_path
!*******************************************************