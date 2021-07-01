PROG =	pi

SRCS =	pi.f90

OBJS =	pi.o

LIBS =	

CC = cc
CFLAGS = -O
FC = f77
FFLAGS = -O
#F90 = f90
F90 = gfortran
#F90 = ifort
F90FLAGS = -O
LDFLAGS = -s
EDI = sed

all: $(PROG)

$(PROG): $(OBJS)
	$(F90) $(LDFLAGS) -o $@ $(OBJS) $(LIBS)

clean:
	rm -f $(PROG) $(OBJS) *.mod

.SUFFIXES: $(SUFFIXES) .f90

.f90.o:
	$(EDI) -e 's/hallo/Fortran ist/' -e 's/welt/toll/' $< > blw.f90
	$(F90) $(F90FLAGS) -c blw.f90
	mv blw.o pi.o
	rm blw.f90

