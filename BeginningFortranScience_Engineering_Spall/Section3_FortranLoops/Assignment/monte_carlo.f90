! Program to estimate Pi using a Monte Carlo technique
PROGRAM monte_carlo
IMPLICIT NONE
REAL :: pi,x,y,radius
INTEGER :: queries, count, max_queries

count=0
WRITE(*,*)'Enter maximum number of queries'
READ(*,*)max_queries

DO queries=1,max_queries
   CALL RANDOM_SEED()
   CALL RANDOM_NUMBER(x)
   CALL RANDOM_NUMBER(y)
   radius=SQRT(x**2+y**2)
   IF(radius < 1.0)count=count+1
END DO
print*,count, max_queries
pi=4.0*REAL(count)/REAL(max_queries)

WRITE(*,*)'Estimate for Pi =',pi

END PROGRAM monte_carlo