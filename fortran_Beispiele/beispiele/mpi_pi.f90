      program main

      include 'mpif.h'

      double precision  PI25DT
      parameter        (PI25DT = 3.141592653589793238462643d0)

      double precision  mypi, pi, sum, x,  a
      integer n, myid, numprocs, i, l, rc
      character*32 procnam

      call MPI_INIT( ierr )
      call MPI_COMM_RANK( MPI_COMM_WORLD, myid, ierr )
      call MPI_COMM_SIZE( MPI_COMM_WORLD, numprocs, ierr )

      sizetype   = 1
      sumtype    = 2
      
 10   if ( myid .eq. 0 ) then
         write(*,98)
 98      format('Enter the number of intervals: (0 quits)')
         read(*,99) n
 99      format(i12)
         CALL system('date +"Datum: %d.%m.%Y + Uhrzeit: %T"')
         write(*,96) n
96       format('going to calculate for ',i12)
      endif
      
      call MPI_BCAST(n,1,MPI_INTEGER,0,MPI_COMM_WORLD,ierr)

c                                 check for quit signal
      if ( n .le. 0 ) goto 30

c                                 calculate the interval size

      l=n/numprocs
      sum  = 0.0d0
      do 20 i = myid*l, (myid+1)*l -1
         sum = sum + dble((-1.0d0)**i)/(2.0d0*dble(i)+1.0d0)
 20   continue
      mypi = 4.d0 * sum

c                                 collect all the partial sums
      call MPI_REDUCE(mypi,pi,1,MPI_DOUBLE_PRECISION,MPI_SUM,0,
     $     MPI_COMM_WORLD,ierr)

c                                 node 0 prints the answer.
      if (myid .eq. 0) then
         CALL system('date +"Datum: %d.%m.%Y + Uhrzeit: %T"')
         write(6, 97) pi, abs(pi - PI25DT)
 97      format('  pi is approximately: ', F22.16,
     +          '  Error is: ', F22.16)
      endif

      goto 10

 30   call MPI_FINALIZE(rc)
      stop
      end




