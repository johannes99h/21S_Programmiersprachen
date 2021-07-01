      program main

      include 'mpif.h'

      integer n, myid, numprocs, l
      character*(MPI_MAX_PROCESSOR_NAME) procnam

      call MPI_INIT( ierr )
      call MPI_COMM_RANK( MPI_COMM_WORLD, myid, ierr )
      call MPI_COMM_SIZE( MPI_COMM_WORLD, numprocs, ierr )
      call MPI_Get_processor_name (procnam,l,ierr)
      write(6,*) 'Process ',myid,' of ',numprocs,' is alive on ', &
     &           procnam(1:l)
      call sleep (1)
      call MPI_FINALIZE(rc)
      stop
      end




