#!/bin/bash
#SBATCH --job-name=LMPCLS
#SBATCH -p guriang
#SBATCH -N 1
#SBATCH -n 4
#SBATCH --ntasks-per-core=2
#SBATCH --mail-type=END
###SBATCH --mail-user=

export OMP_PROC_BIND=true
export NUMBA_NUM_THREADS=$SLURM_NPROCS
export OMP_NUM_THREADS=$SLURM_NPROCS
export OMPI_MCA_btl_vader_single_copy_mechanism=none
mpirun /home/share/bin/lmp_mpi -in input.file
