.PHONY: clean semic

FC            = gfortran
MPIFC         = gfortran
NETCDF_FFLAGS = $(shell nc-config --fflags)
NETCDF_FLIBS  = $(shell nc-config --flibs)
NETCDF_LIBS   = $(shell nc-config --libs)
LDFLAGS       = $(NETCDF_LIBS)
INCLUDES      = $(NETCDF_FFLAGS)
NCFLAGS       = $(NETCDF_FLIBS)
FLAGS         = -J$(OBJ_DIR)

# nc-config sucks on my mac...
NETCDF_FFLAGS = -I$(shell nc-config --includedir)
NETCDF_FLIBS  = -lnetcdff 
NETCDF_LIBS   = -L$(shell nc-config --libdir)

LDFLAGS       = $(NETCDF_LIBS)
INCLUDES      = $(NETCDF_FFLAGS)
NCFLAGS       = $(NETCDF_FLIBS)

SRC_DIR     = .
OBJ_DIR     = ./.obj

semic_bin     = semic.x

ifeq ($(debug),1)
        FFLAGS   = -Og -p -fcheck=all -fbackslash -Wall -Wextra -fbounds-check -fbacktrace -cpp -ffpe-trap=zero,overflow,underflow
else
        FFLAGS   = -O3 -fbackslash -cpp
endif

# ifort options
ifeq ($(ifort),1)
        FC = ifort
        MPIFC = mpiifort
        FLAGS = -module $(OBJ_DIR)
        FFLAGS = -O3 -xHost -ipo -assume bscc -fpp -DUSE_INTEL
        ifeq ($(debug), 1)
                FFLAGS  = -C -traceback -ftrapuv -fpe0 -assume bscc -check all -fpp -DUSE_INTEL
        endif
endif

# List all the sources
SRCS = external/ncio-1.1/ncio.f90 \
       external/semic-1.1/surface_physics.f90 \
       utils.f90

# Define the rule to make object file from f90
$(OBJ_DIR)/%.o : $(SRC_DIR)/%.f90
	$(MPIFC) $(FFLAGS) -c $< -o $@ -I$(OBJ_DIR) $(FLAGS) $(INCLUDES)

bin : $(SRCS:%.f90=$(OBJ_DIR)/%.o) $(OBJ_DIR)/main.o
	$(FC) $(FFLAGS) $(INCLUDES) -o ../bin/$(semic_bin) $^ $(LDFLAGS) $(NCFLAGS)

semic : make_dirs externals bin

make_dirs :  
	mkdir -p $(OBJ_DIR)/external/ncio-1.1
	mkdir -p $(OBJ_DIR)/external/semic-1.1
	mkdir -p $(SRC_DIR)/external

externals:
	wget -qO- https://github.com/mkrapp/semic/archive/v1.1.tar.gz | tar xz -C $(SRC_DIR)/external
	wget -qO- https://github.com/alex-robinson/ncio/archive/v1.1.tar.gz | tar xz -C $(SRC_DIR)/external
	wget --user=anonymous --password='pgierz@awi.de' ftp://ftp.awi.de/incoming/pgierz/gierz_semic_inputs.tar.gz | tar xz -C $(SRC_DIR)


clean:
	rm -rf *.mod *.so *.o $(OBJ_DIR) 
	$(MAKE) -C $(SRC_DIR)/external/ncio-1.1 clean
test:
	 ../bin/semic.x

all: clean semic test

host:
	 @echo $(shell uname)
