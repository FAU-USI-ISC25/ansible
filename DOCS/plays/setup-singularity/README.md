# Setup Singularity
> [!NOTE]
> This will install [apptainer](https://apptainer.org/). Apptainer is the continuation of singularity. But singuraity still exists as [singularityCE](https://docs.sylabs.io/guides/latest/user-guide/). Apptainer can also be called by `singularity`

This Play will install the apptainer package from the RHEL repos. The nvidia-container-toolkit from the nvidia-cuda repo will be install on all nodes in the GPU group
## Vars
none
## Roles
- [`install-package`](../../roles/install-package)
- [`install-gpu-for-singularity`](../../roles/install-gpu-for-singularity)
