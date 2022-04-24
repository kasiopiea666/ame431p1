#!/bin/bash
#SBATCH --job-name=Test
#SBATCH --partition=windfall
#SBATCH --mail-type=END,FAIL
#SBATCH -e %j.err
#SBATCH -o %j.out
#SBATCH --mail-user=jwgerson@email.arizona.edu
#SBATCH --nodes=1
#SBATCH --ntasks=4
#SBATCH --mem=8gb
#SBATCH --time 1:00:00
cd $SLURM_SUBMIT_DIR
date
module load openmpi3
mpiexec SU2_CFD *.cfg |& tee screen.dat
date
