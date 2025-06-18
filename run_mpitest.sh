#!/bin/bash
#===========================

# Where is OpenMPI?
export PATH="/pw/apps/ompi/bin":${PATH}

# Compile
mpicc -o mpitest.out mpitest.c

# Run
srun -N 2 -n 4 --mpi=pmi2 mpitest.out

# Clean up
rm -fv mpitest.out

