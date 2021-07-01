program teichfolie

implicit none
real,parameter :: x=6.0,y=4.0
real :: a,b,c,h,h1,h2,v1,v2

! v = (x-2*h) * (y-2*h) * h
! dv/dh = 12*h*h - 4*(x+y)*h +x*y 
!
! Loesung der quadtrat. Gleichung a*x*x+b*x+c=0
! ist -b +- sqrt (b*b-4*a*c)/(2*a)
!
      a = 12.
      b = -4.*(x+y)
      c = x*y

      h1 = -b + sqrt (b*b-4*a*c)/(2*a)
      h2 = -b - sqrt (b*b-4*a*c)/(2*a)
      write(*,*) 'Nullstellen der Ableitung bei h=',h1,h2

      v1=(x-2*h1) * (y-2*h1) * h1
      v2=(x-2*h2) * (y-2*h2) * h2
      write(*,*) 'Mit den Volumina v=',v1,v2
end program teichfolie
