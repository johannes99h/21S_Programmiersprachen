program a
integer:: i=0,l
do l=1,7
  
  select case (l)
   case (1,2,4,5,7)
   i=i+l
   case (3,6)
   i=i*l
  end select
end do
write(*,*)i
end program a
