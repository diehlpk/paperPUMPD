# paperPUMPD

## Mesh

* [Base mesh](https://github.com/diehlpk/paperPUMPD/blob/main/stationary_crack/input_mesh.yaml)
* [Refined once mesh](https://github.com/diehlpk/paperPUMPD/blob/main/stationary_crack/input_mesh_fine_2.yaml)
* [Refined twice mesh](https://github.com/diehlpk/paperPUMPD/blob/main/stationary_crack/input_mesh_fine_4.yaml)

This mesh are generated in the `stationary_crack` folder and need to be copied to all other folders.

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

Following [scripts](https://github.com/nonlocalmodels/HPCBuildInfrastructure)  were used to compile NLMech.
