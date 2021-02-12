#!/usr/bin/env bash
#SBATCH -o fine-2.out
#SBATCH -e fine-3.err
#SBATCH -t 72:00:00
#SBATCH -p medusa
#SBATCH -N 1
#SBATCH --mail-user=pdiehl@cct.lsu.edu
#SBATCH -D /home/diehlpk/Simulations/paperPUMPD/inclined
#export MODULEPATH=$HOME/Compile/HPCBuildInfrastructure/build/modules:$MODULEPATH
#module load hpx vtk 
export PATH=$PATH:$HOME/Compile/HPCBuildInfrastructure/build/nl/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/diehlpk/Compile/HPCBuildInfrastructure/build/nl/lib64/:/home/diehlpk/Compile/HPCBuildInfrastructure/build/pcl/lib:/home/diehlpk/Compile/HPCBuildInfrastructure/build/flann/lib/:/home/diehlpk/Compile/HPCBuildInfrastructure/build/hpx/lib64/:/home/diehlpk/Compile/HPCBuildInfrastructure/build/jemalloc/lib/:/home/diehlpk/Compile/HPCBuildInfrastructure/build/vtk/lib64/

#srun mesh -i input_mesh_fine-5.yaml -d 2
srun NLMech -i input_const_load_top-bottom-crack-fine-5.yaml > log5.txt
#srun NLMech -i input_const_load_top-bottom-crack-fine-2.yaml > log.txt
