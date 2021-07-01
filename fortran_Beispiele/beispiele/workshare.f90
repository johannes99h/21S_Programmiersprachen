     PROGRAM WORKSHARE
 
      INTEGER N, I, J
      PARAMETER (N=100)
      REAL AA(N,N), BB(N,N), CC(N,N), DD(N,N), FIRST, LAST
 
!     Some initializations
      DO I = 1, N
        DO J = 1, N
          AA(J,I) = I * 1.0
          BB(J,I) = J + 1.0
        ENDDO
      ENDDO
 
!$OMP PARALLEL SHARED(AA,BB,CC,DD,FIRST,LAST)

!$OMP WORKSHARE
      CC = AA * BB
      DD = AA + BB
      FIRST = CC(1,1) + DD(1,1)
      LAST = CC(N,N) + DD(N,N)
!$OMP END WORKSHARE NOWAIT

!$OMP END PARALLEL
 
      END

