       PROGRAM OPENMP_WORLD
       INTEGER NTHREADS, TID, OMP_GET_NUM_THREADS, OMP_GET_THREAD_NUM

!$OMP PARALLEL PRIVATE(TID)

      TID = OMP_GET_THREAD_NUM()
      WRITE(*,*)'Hello World from thread = ', TID

      IF (TID .EQ. 0) THEN
        NTHREADS = OMP_GET_NUM_THREADS()
        WRITE (*,*) 'Number of threads = ', NTHREADS
      END IF

!$OMP END PARALLEL

       END
