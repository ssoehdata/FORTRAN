   USE OMP_LIB
   IMPLICIT NONE

!     type: set OMP_NUM_THREADS=4  at DOS prompt to override default
!     The Standard HELLO WORLD code

      print*,'Hello world from threads:'
!$OMP PARALLEL    !this is a "directive"
      PRINT*,'This is Thread Number ',omp_get_thread_num()
!$OMP END PARALLEL
      print*, 'back to sequential world'
      END
