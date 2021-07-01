! Eine moegliche Fortran-Implementierung des unter
! http://www.sortieralgorithmen.de/quicksort/index.html
! vorgestellten Quick-Sort
! Zusammen mit einem Hauptprogramm zum Testen.
!
program quicksorttest
implicit none
integer,parameter :: n=1024

real, dimension(n) :: a
integer k

a(1)=5.
a(2)=7.
a(3)=13.
a(4)=-5
a(5)=0.
a(6)=-13.

call quicksort(a,1,6,n)

do k=1,6
        write (*,*) a(k)
enddo
end program quicksorttest

recursive subroutine quicksort( A, l, r,n)
implicit none
integer, intent(in) :: l,r,n
real, intent(inout),dimension(n) ::a

integer ::  q
integer :: partition

        write(*,*) 'Quicksort aufgerufen'

  if (l < r) then
    q = partition(A, l, r,n)
      call quicksort(A, l, q,n)
      call quicksort(A, q+1, r,n)
  endif
end subroutine

integer function partition( A, l,  r,n)
implicit none
integer, intent(in) :: l,r,n
real, intent(inout),dimension(n) ::a

real :: x,Atmp
integer :: i,j,z
  z=0
  x= A((l+r)/2);
  i=l
  j=r
  do
    do  while (A(j) > x)
    j=j-1
    end do
    do  while (A(i) < x)
    i=i+1
    end do
    if (i < j) then
      Atmp=A(i)
      A(i)=A(j)
      A(j)=Atmp
        z = z + 1
        write(*,*) 'Vertauschungsoperation: ', z
    else
      partition=j
      return
    endif
  end do
end function partition
