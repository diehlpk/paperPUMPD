# paperPUMPD

## Mesh

This mesh need to be generated in the each folder.

The following command was used to generate the mesh

```bash
mesh -i input_mesh_*.yaml -d 2
```

## Running the simulaitons 

Following command was used to run the simualitons

```bash
NLMech -i input_*.yaml 
```

for more details look at the [sbatch](https://github.com/diehlpk/paperPUMPD/blob/main/inclined/run.sbatch) file.


## Dependencies

* [NLMech](https://github.com/nonlocalmodels/NLMech)

P. Diehl, P. K. Jha, H. Kaiser, R. Lipton, and M. Lévesque. An asynchronous and task-based implementation of peridynamics utilizing hpx—the C++ standard library for parallelism and concurrency. SN Applied Sciences, 2(12):2144, 2020, [10.1007/s42452-020-03784-x](https://link.springer.com/article/10.1007%2Fs42452-020-03784-x)

Following [scripts](https://github.com/nonlocalmodels/HPCBuildInfrastructure) were used to compile NLMech.
