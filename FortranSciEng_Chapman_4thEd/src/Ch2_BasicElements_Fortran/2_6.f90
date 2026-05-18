! Exampl2 2-6

!  Purpose:
!       To convert an input temperature from degrees Fahrenheit to
!       an output temperature in kelvins

PROGRAM temp_conversion

        IMPLICIT NONE
REAL    :: temp_f       ! Temperature in degrees Fahrenheit
REAL    :: temp_k       ! Temperature in kelvins

! Prompt the user for input temperature
WRITE (*,*) 'Enter the temperature in degrees Fahrenheit: '
READ(*,*) temp_f

! Convert to kelvins
temp_k = (5. / 9. ) * (temp_f -32.) + 273.15

! Write out the result
WRITE(*,*) temp_f, ' degrees Fahrenheit = ', temp_k, ' kelvins '


END PROGRAM temp_conversion

