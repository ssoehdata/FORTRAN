!      COMPUTE TEMPERATURE DISTRIBUTION IN PLATE

!      DECLARATION SECTION
     
       PROGRAM temp_dist
       IMPLICIT NONE
       INTEGER, PARAMETER :: NX=500,NY=500
       INTEGER :: i,j, outeriterations
       REAL, DIMENSION(0:NX+1,0:NY+1) :: t

!      EXECUTION SECTION

!      INITIALIZE TEMPERATURE ARRAY, t
       t=0.0
!      ADD BOUNDARY CONDITIONS
       t(:,0)=100.;  t(0,:)=100.

       DO OUTERITERATIONS=1,10000  
          DO i=1,NX
             DO j=1,NY
               t(i,j)=0.25*(t(i+1,j)+t(i-1,j)+t(i,j+1)+t(i,j-1))
             END DO
          END DO
       END DO

       PRINT*; PRINT*
       DO j=NY+1,0,-1
        !  WRITE(*,100)( t(i,j),i=0,NX+1)
        !  PRINT*
       END DO
100    FORMAT(20F8.2)

!      TERMINATION SECTION

       STOP
       END PROGRAM temp_dist


