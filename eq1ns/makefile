none:
run:
	#lmp_wufs < lipid.bd
	#mpiexec -n 2 lmp_mpi < in.CH3
	RunMatScript.sh -np 4  373eq1ns
clean:
	rm -f atoms.data log*.lammps atoms*.lammpstrj restart.* err.log job.log ser_job.pbs.* *~
