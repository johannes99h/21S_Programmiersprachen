subroutine zeitschritt

use gol

implicit none
save
logical :: afeldda=.false.
integer :: alloc_status
integer :: ix,iy,numnachbarn,schritt
integer, dimension(:,:), allocatable :: afeld

if ( .not. afeldda ) then
	allocate(afeld(0:nx+1,0:ny+1),stat=alloc_status)
	if ( alloc_status /= 0 ) then
		write (*,*) 'Fehler beim Allocieren des arbeitsfeldes',alloc_status
		stop
	endif
	afeldda=.true.
endif

do iy=1,ny
	do ix=1,nx
		afeld(ix,iy)=feld(ix,iy)
	end do
end do

!oberer Rand
do ix=1,nx
	afeld(ix,0)=feld(ix,ny)
end do
!unterer Rand
do ix=1,nx
	afeld(ix,ny+1)=feld(ix,1)
end do
!linker Rand
do iy=1,ny
	afeld(0,iy)=feld(nx,iy)
end do
!rechter Rand
do iy=1,ny
	afeld(nx+1,iy)=feld(1,iy)
end do
! Ecken
afeld(0   ,0   )=feld(nx,ny)
afeld(nx+1,0   )=feld(1 ,ny)
afeld(0   ,ny+1)=feld(nx,1 )
afeld(nx+1,ny+1)=feld(1 ,1 )

do iy=1,ny
	do ix=1,nx
		numnachbarn=afeld(ix-1,iy-1)+afeld(ix  ,iy-1)+afeld(ix+1,iy-1)+ &
			    afeld(ix-1,iy  )+                 afeld(ix+1,iy  )+ &
                            afeld(ix-1,iy+1)+afeld(ix  ,iy+1)+afeld(ix+1,iy+1)
		feld(ix,iy)=schritt(numnachbarn,afeld(ix,iy),ix,iy)
	end do
end do

return
end subroutine zeitschritt

integer function schritt(n,old,i,j)

use gol, only: nachbarn,nnachbarn

implicit none
integer, intent(in) :: n,old,i,j

if ( (n<0) .or. (n>nnachbarn) ) then
	write(*,*) 'Unmoegliche Nachbarzahl!',n,'bei',i,j
	stop
endif
select case (nachbarn(n))
case(0)
	schritt=0
case(1)
	schritt=old
case(2)
	schritt=1
end select

return
end function schritt
