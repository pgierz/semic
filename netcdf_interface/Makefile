.PHONY: clean semic

FC            = gfortran
MPIFC         = mpif90
#NETCDF_FFLAGS = -I/usr/local/Cellar/netcdf/4.4.1.1_3/include -I/usr/local/Cellar/hdf5/1.10.0-patch1/include
#NETCDF_FLIBS  = -L/usr/local/Cellar/netcdf/4.4.1.1_3/lib -L/usr/local/Cellar/szip/2.1/lib -L/usr/local/Cellar/hdf5/1.10.0-patch1/lib -L/usr/local/Cellar/netcdf/4.4.1.1_3/lib -lnetcdf -lhdf5_hl -lhdf5 -lsz -lz -ldl -lm -lcurl
NETCDF_FFLAGS = $(shell nc-config --fflags)
NETCDF_FLIBS  = $(shell nc-config --flibs)
NETCDF_LIBS   = $(shell nc-config --libs)
LDFLAGS       = $(NETCDF_LIBS)
INCLUDES      = $(NETCDF_FFLAGS)
NCFLAGS       = $(NETCDF_FLIBS)
FLAGS         = -J$(OBJ_DIR)

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

$(semic_bin) : $(SRCS:%.f90=$(OBJ_DIR)/%.o) $(OBJ_DIR)/main.o
	$(FC) $(FFLAGS) $(INCLUDES) -o ../bin/$@ $^ $(LDFLAGS) $(NCFLAGS)

semic : make_dirs externals $(semic_bin)

make_dirs :  
	mkdir -p $(OBJ_DIR)/external/ncio-1.1
	mkdir -p $(OBJ_DIR)/external/semic-1.1
	mkdir -p $(SRC_DIR)/external

externals:
	wget -qO- https://github.com/mkrapp/semic/archive/v1.1.tar.gz | tar xz -C $(SRC_DIR)/external
	wget -qO- https://github.com/alex-robinson/ncio/archive/v1.1.tar.gz | tar xz -C $(SRC_DIR)/external

clean:
	rm -rf *.mod *.so *.o $(OBJ_DIR) 
	$(MAKE) -C $(SRC_DIR)/external/ncio-1.1 clean
test:
	../bin/semic.x
