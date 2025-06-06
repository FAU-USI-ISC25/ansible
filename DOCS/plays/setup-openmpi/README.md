# Setup Openmpi
> [!IMPORTANT]
> By default openmpi will need slurm's pmi libary in order to work. Slurm musst there for be installed before.

OpenMPI will be install on the head node therefor the install folder musst be shared (NFS). A module file will also be created. Unless `openMPIConfigure` is manualy overwriten openMPI will be build with slurm, singularity and ucx. If openMPI is build with cuda it will only work on nodes with nvidia driver. If the same version of openMPI is installed with different configurations without cleaning the files created by the installation in the `installerTmpFoleder` folder  betvean the instalatios the behavior is undefind. This will also create a modulefile for the openMPI instalation.
## Vars
- `openMPIVersion`
  -  The version number of openMPI that schal be installed.
  -  Values: a valid openMPI version number i.e. `5.0.6`
  -  Default: none
- `intstallerTmpFolder`
  - The Folder in which the installer puts everything that is not neaded after installation (i.e. download, buildoutput...) . This will not be cleand up afterwards
  - Values: a path that exists on the node
  - Default: none
- `cuda_version`
  - The version number of a cuda instalation under `<sharedSoftwarePath>/cuda/cuda-<cuda_version>` that will be used for building openMPI with cuda. This value will be ignored if openMPIwithCuda is false
  - Values: a valid cuda version i.e. `12.4.0`
  - Default: none
- `openMPIwithCuda`
  - Controls whether openMPI will be build with cuda
  - Values: a boolean value
  - Default: `yes`
- `openMPIConfigure`
  - If this var is not given the configure string will be created from the given input vars 
  - Values: a valid string for the configure command of openmpi
  - Default: none
- `sharedSoftwarePath`
  - the Path ware openMPI will be installed
  - Values: a valid path on the head node
  - Default
- `openMPIwithPMIx`
  -  Controls whether openMPI will be build with PMIx 
  -  Values: a boolean value
  -  Default: `yes`
- `openMPIwithPMI` 
  -  Controls whether openMPI will be build with PMI(2). This value will be ignored if `openMPIversion` is 5 or higher because support for PMI(2) was removed in openMPI
  -  Values: a boolean value
  -  Default: `yes`
- `modulefilesFolder`
  - the root path of Lmod modulefiles. The modulefile will be created under `<modulefilesFolder>/openmpi/`
  - Values: a valid path on the head node
  - Default: none

## Roles
- [`install-package`](../../roles/install-package)
- [`install-openmpi`](../../roles/install-openmpi)
- [`openmpi-modulefile`](../../roles/openmpi-modulefile)
