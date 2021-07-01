subroutine ausgabe (iter)

use gol

implicit none
integer, intent(in) :: iter
integer:: ix,iy,dummyerr
character(len=1026) :: z
character :: dummy

z(1:1)=' '
do ix=1,nx
	z(ix+1:ix+1)='-'
end do
z(nx+2:nx+2)=' '
write(*,*) z(1:nx+2)

z(1:1)='|'
z(nx+2:nx+2)='|'
do iy=1,ny
	do ix=1,nx
		if (feld(ix,iy) == 1 ) then
			z(ix+1:ix+1)='X'
		else
			z(ix+1:ix+1)=' '
		endif
	end do
	write(*,*) z(1:nx+2)
end do

z(1:1)=' '
do ix=1,nx
	z(ix+1:ix+1)='-'
end do
z(nx+2:nx+2)=' '
write(*,*) z(1:nx+2)

write(*,1000) iter,zustandssummen(0),zustandssummen(1), &
              100.*zustandssummen(1)/(zustandssummen(0)+zustandssummen(1))

1000 format(1x,'Zeit:',i4,', 0:',i6,', 1:',i6,'=',f5.2,'; Press ENTER to continue')

read (*,'(1a)',iostat=dummyerr) dummy

return
end subroutine ausgabe
