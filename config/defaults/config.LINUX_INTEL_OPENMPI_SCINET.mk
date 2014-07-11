# Config File for LINUX and INTEL Compiler
AR       = ar
AR_FLAGS = -rvs
RM       = /bin/rm -rf

# Fortran compiler and flags
FF90        = mpif90
FF90_FLAGS  = -r8 -O2 -fPIC

# C compiler and flags
CC       = mpicc
CC_FLAGS   = -O2 -fPIC

# Define potentially different python, python-config and f2py executables:
PYTHON = python
PYTHON-CONFIG = python-config
F2PY = f2py

# Define additional flags for linking
LINKER_FLAGS = -Wl,-rpath,/scinet/gpc/intel/ics/composer_xe_2011_sp1.9.293/mkl/lib/intel64 -L/scinet/gpc/intel/ics/composer_xe_2011_sp1.9.293/mkl/lib/intel64 -lmkl_intel_lp64 -lmkl_intel_thread -lmkl_core -liomp5 -lpthread

# ------- Define Petsc Info --- Should not need to modify this -----
include ${PETSC_DIR}/conf/variables
PETSC_INCLUDE_FLAGS=${PETSC_CC_INCLUDES} -I$(PETSC_DIR)
PETSC_LINKER_FLAGS=${PETSC_LIB}