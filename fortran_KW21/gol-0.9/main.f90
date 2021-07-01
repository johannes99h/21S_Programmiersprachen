include 'modulegol.inc'

program gameoflife

use gol

integer :: izeit

call laber
call parameterlesen
call initialisiere
call statistik(0)
call ausgabe(0)

do izeit=1,nzeit
	call zeitschritt
	call statistik(izeit)
	call ausgabe(izeit)
end do

end program gameoflife
