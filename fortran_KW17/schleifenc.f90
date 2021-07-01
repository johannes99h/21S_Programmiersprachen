program a
integer:: i=0,l
do l=1,7
  if (l==2) cycle
  select case (l)
   case (2,4,5,7)
   i=i+l
   case (1,3,6)
   i=i*l
  end select
end do
write(*,*)i
end program a
