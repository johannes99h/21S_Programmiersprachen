PROG = gameoflife

OBJS = main.o laber.o parameterlesen.o ausgabe.o initialisiere.o zeitschritt.o statistik.o

LIBS =

#F90 = gfortran
F90 = gfortran 
F90FLAGS = -C -O
LDFLAGS = -g

all: $(PROG)

$(PROG): $(OBJS)
	$(F90) $(LDFLAGS) -o $@ $(OBJS) $(LIBS)

clean:
	rm -f $(PROG) $(OBJS) *.mod

.SUFFIXES: $(SUFFIXES) .f90 .mod

.f90.o: gol.mod
	$(F90) $(F90FLAGS) -c $<

gol.mod: modulegol.inc 
	$(F90) $(F90FLAGS) -c main.f90

statistik.o: gol.mod
	$(F90) $(F90FLAGS) -c statistik.f90
