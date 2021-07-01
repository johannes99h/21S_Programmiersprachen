subroutine statistik (iter)

use gol

implicit none
integer, intent(in) :: iter

integer ::ix,iy

zustandssummen(0)=0
zustandssummen(1)=0

do iy=1,ny
	do ix=1,nx
		zustandssummen(feld(ix,iy))=zustandssummen(feld(ix,iy))+1
	end do
end do

return
end subroutine statistik
