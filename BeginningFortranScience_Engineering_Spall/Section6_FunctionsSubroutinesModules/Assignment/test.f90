MODULE constants

IMPLICIT NONE

SAVE

REAL, PARAMETER :: pi=4.0*atan(1.0), gravity=9.81

END MODULE constants

!************************************

PROGRAM test1

USE constants

IMPLICIT NONE

PRINT*,'pi= ',pi

PRINT*,'gravity= ',gravity

END PROGRAM test1