subroutine parameterlesen 

use gol

implicit none
integer, parameter :: slen=128
integer :: lnachbar,i,lebe
character(slen) :: s

do lnachbar=0,nnachbarn
	nachbarn(lnachbar)=0
end do

write (*,*) 'Wie gross sol das Spielfeld sein: nx, ny'
read (*,*) nx,ny
write (*,*) 'Wieviele Zeitschritte sollen gespielt wreden: nzeit'
read (*,*) nzeit
write (*,*) 'Mit welcher Wahrscheinlichkeit sollen Zellen am Start leben'
read (*,*) pstartleben
write (*,*) 'welches regelwerk soll verwendet werden? z.B. 23/3'
read (*,'(a)') s

lebe=1
do i=1,len_trim(s)
	if (s(i:i) == '/' ) then
		lebe=2
		cycle
	endif
	read (s(i:i),*) lnachbar
	nachbarn(lnachbar)=lebe
end do

end subroutine parameterlesen
