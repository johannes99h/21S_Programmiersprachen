module gol
implicit none
save
integer, dimension(:,:), allocatable :: feld
integer, dimension(0:1) :: zustandssummen
integer :: nx,ny,nzeit
integer, parameter :: nnachbarn=8 
integer, dimension(0:nnachbarn) :: nachbarn
real :: pstartleben

end module gol

