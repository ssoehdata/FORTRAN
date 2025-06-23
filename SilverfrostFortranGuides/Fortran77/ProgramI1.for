      program I1
      real x, y 
      print '(a\)', 'Input a floating point value:' 
      read *, x 
      IF (x.LT.0.0) then 
        y=x-1.0 
      elseif(x.LE.1.0) then 
       y=x*(x-3.0)+4.0 
      else 
        y=x+1.0 
      endif 
      print '(a,f6.2)', 'The result is ', y 
      end 

C Program that reads in a REAL value for x for x -1 if x < 0, x^2 - 3x + 4 if 0 le x le 1 
C x + 1 if x > 1