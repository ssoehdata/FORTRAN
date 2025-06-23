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
      