!  use the openmp library
      use OMP_LIB
      implicit none
      integer :: numthreads,id

      write(*,*)'enter number of threads'
      read(*,*)numthreads
      print*
      call omp_set_num_threads(numthreads) !set the number of threads

!  start parallel region     
!  each thread has its own independent (private) value of id
!$omp parallel private(id)

      id=omp_get_thread_num()
      print*,'Hello world from thread id:',id

!  each thread waits for all others to arrive before continuing
!$omp barrier !each thread waits for all others to arrive before continuing

      if(id .eq. 0)then
        print* ;print*,'total number threads = ',omp_get_num_threads()
      end if

!  end parallel region
!$omp end parallel
      print*
      print*,'back to sequential code'
      end
