PROGAM O 
    IMPLICIT NONE 
    INTEGER  case 
    REAL a,b,c,x1,x2
    PRINT "(a\)", "Solving a quadratic equation"
    PRINT "(a\)", "Enter the three coefficients" 
    READ *, a,b,c
    CALL quad(a,b,c,case,x1,x2)
    SELECT CASE(case) 
      CASE(1) 
        PRINT "(a/,F6.2)", "The single root is:", x1 
      CASE(2)
        PRINT 100, "The two real roots are ", x1,& 
            " and ", x2 
      CASE(3) 
        PRINT 100, "The real and imaginary parts are ", x1,& 
            " and ", x2 
     END SELECT 
     100 FORMAT(/2(a,F6.2)) 

     CONTAINS 

     SUBROUTINE quad(a,b,c, case, x1, x2
        REAL,INTENT(IN):: a,b,c 
        INTEGER,INTENT(OUT)::case 
        REAL,INTENT(OUT)::x1,x2
        REAL d
        IF (a==0.0) THEN 
            case=1
            x1=-c/b 
            RETURN 
        ENDIF 
        d=b*b-4.0*a*c
        IF(d>=0.0)THEN 
          case=2
          d=SQRT(d) 
          x1=(-b+d)/(2.0*a)
          x2=(-b-d)/(2.0*a)
          RETURN
        ELSE 
          case=3
          x1=-b/(2.0*a)
          x2=SQRT(-d)/(2.0*a)                
        ENDIF 
      ENDSUBROUTINE quad 
              
END PROGRAM O
