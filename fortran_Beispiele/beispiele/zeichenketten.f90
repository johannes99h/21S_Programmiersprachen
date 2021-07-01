program zeichenketten
   implicit none
   character(len=10) :: ausdruck1
   character(len=4)  :: ausdruck2 = '.erg'
   character(len=10) :: ausdruck3
   integer :: i

   ausdruck1 = 'diesunddas'
   ausdruck3 = 'dies das'
   write(*,*)  'ausdruck1            = ', ausdruck1
   write(*,*)  'ausdruck2            = ', ausdruck2
   write(*,*)  'ausdruck3            = ', ausdruck3
   write(*,*)
   write(*,*)  'len(ausdruck1)       = ', len(ausdruck1)
   write(*,*)  'len(ausdruck2)       = ', len(ausdruck2)
   write(*,*)  'len(ausdruck3)       = ', len(ausdruck3)
   write(*,*)
   write(*,*)  'ausdruck1(5:7)       = ', ausdruck1(5:7)
   write(*,*)  'ausdruck2(1:1)       = ', ausdruck2(1:1)
   write(*,*)
   write(*,*)  'ausdruck1//ausdruck2 = ', ausdruck1//ausdruck2
   write(*,*)   
   write(*,*)  'Die Stelle (den Index) des 1. Leerzeichens in ausdruck3 finden:'
   write(*,*)  "index(ausdruck3,' ') = ", index(ausdruck3,' ')
   write(*,*)
   write(*,*)  'Die Nummer eines Zeichens in der ASCII-Tabelle finden:'
   write(*,*)  "iachar('a')          = ", iachar('a')
   write(*,*) 
   write(*,*)  'Zu der Nummer in die ASCII-Tabelle das korresp. Zeichen finden:'
   write(*,*)  'achar(65)            = ', achar(65)
   write(*,*)
   write(*,*)  "In der ASCII-Tabelle, das auf das 'A' folgende Zeichen finden:"
   write(*,*)  "achar(iachar('A')+1) = ", achar(iachar('A')+1)
   write(*,*)
   write(*,*)  "von ausdruck3 das erste Wort ausgeben:" 
              i =  index(ausdruck3,' ')
   write(*,*) ausdruck3(1:(i-1)) 
   write(*,*) 
   write(*,*) 'Sukzessive Dateinamen zusammensetzen: '
   do i= 1, 3
     write(*,*) 'datei'//achar(iachar('0')+i)//'.dat'
   end do

end program zeichenketten

