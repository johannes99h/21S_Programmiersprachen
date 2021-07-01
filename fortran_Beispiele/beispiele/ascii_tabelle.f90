program ascii_tabelle
	implicit none
	integer :: istart, n

	istart = iachar('A')
        do n = istart, istart+60
	   write(*,*) n,' ',achar(n)        
	end do 
end program ascii_tabelle
