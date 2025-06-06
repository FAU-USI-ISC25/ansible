# setup-nvidia-toolkits
This playbook will install the cudatoolkit and nvidia hpc_sdk
## Vars
- `cuda_version`
  - Values: a valid cuda version i.e. `12.4.0`
  - Default: none
- `nvhpc_sdk_version`
- `installerTmpFolder`
- `sharedSoftwarePath`
- `modulefilesFolder`
## Tags
- `cudatoolkit` only install nvidia cuda toolkit
- `nvhpc` only install nvidia hpc_sdk
## Roles
-  [`install-cudatoolkit`](../../roles/install-cudatoolkit)
-  [`cuda-modulefile`](../../roles/cuda-modulefile)
-  [`install-nvhpc`](../../roles/install-nvhpc)
