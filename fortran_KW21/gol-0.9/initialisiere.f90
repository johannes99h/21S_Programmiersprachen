subroutine initialisiere

use gol

implicit none
real, dimension(:,:), allocatable :: rfeld
integer :: alloc_status

allocate(feld(nx,ny),stat=alloc_status)
if ( alloc_status /= 0 ) then
	write (*,*) 'Fehler beim Allocieren des Spielfeldes',alloc_status
	stop
endif

allocate(rfeld(nx,ny),stat=alloc_status)
if ( alloc_status /= 0 ) then
	write (*,*) 'Fehler beim Allocieren des Hilfsfeldes',alloc_status
	stop
endif

call random_seed
call random_number(rfeld)

where (rfeld < pstartleben)
	feld=1
elsewhere
	feld=0
end where

deallocate(rfeld,stat=alloc_status)
if ( alloc_status /= 0 ) then
	write (*,*) 'Fehler beim Deallocieren des Hilfsfeldes',alloc_status
	stop
endif

end subroutine initialisiere
