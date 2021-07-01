program recursive_demo
   implicit none
   integer :: fakultaet  ! Datentyp zum Rueckgabewert der
                         ! recursive function facultaet
   integer :: wert  

   write(*,*) '----------------------------------------'
   write(*,*) ' Beispiel zum rekursiven Programmaufruf ' 
   write(*,*) '----------------------------------------'
   write(*,*)
   write(*,*) 'recursive fuction fakultaet(n) result(product):'
   write(*,*)
   write(*,*) 'fakultaet(0) = ', fakultaet(0)
   write(*,*) 'fakultaet(1) = ', fakultaet(1)
   write(*,*) 'fakultaet(2) = ', fakultaet(2)
   write(*,*) 'fakultaet(3) = ', fakultaet(3)
   write(*,*) 'fakultaet(4) = ', fakultaet(4)
   write(*,*) 'fakultaet(5) = ', fakultaet(5)
   write(*,*) 'fakultaet(6) = ', fakultaet(6)
   write(*,*) 'fakultaet(7) = ', fakultaet(7)
   write(*,*)
   
   write(*,*) 
   write(*,*) 'recursive subroutine factorial(n,ergebnis)'
   write(*,*) 

   call factorial(4,wert)

   write(*,*) 'call factorial(4,wert), wert = ', wert 
   write(*,*) 
  
end program recursive_demo


recursive function fakultaet(n) result(produkt)
   implicit none
   
   integer,intent(in) :: n
   integer            :: produkt
   
   if ( n >= 1) then 
      produkt = n * fakultaet(n-1)
      else 
         produkt = 1
    end if

end function fakultaet


recursive subroutine factorial (n, ergebnis)
   implicit none
   integer, intent(in)  :: n 
   integer, intent(out) :: ergebnis

   integer :: z  ! lokale Variable

   if ( n >= 1) then 
        call factorial(n-1,z)
        ergebnis = n * z 
      else 
        ergebnis = 1
    end if

end subroutine factorial 
