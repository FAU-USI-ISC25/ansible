local base = pathJoin("/apps/openmpi/openmpi-4.1.6")

family("openmpi")

whatis("Name: "..myModuleName())
whatis("Version: "..myModuleVersion())
whatis("Category: Development")

prepend_path("PATH", pathJoin(base, "bin"))
prepend_path("LD_LIBRARY_PATH", pathJoin(base, "lib"))
prepend_path("MANPATH", pathJoin(base, "share/man"))
prepend_path("PKG_CONFIG_PATH", pathJoin(base, "lib/pkgconfig"))
prepend_path("CMAKE_PREFIX_PATH", pathJoin(base, ""))

setenv("MPICC", pathJoin(base, "bin/mpicc"))
setenv("MPICXX", pathJoin(base, "bin/mpic++"))
setenv("MPIF77", pathJoin(base, "bin/mpif77"))
setenv("MPIF90", pathJoin(base, "bin/mpif90"))
setenv("OPENMPI_ROOT", pathJoin(base, ""))
-- optional:
setenv("MPI_HOME", pathJoin(base, ""))
setenv("SHMEM_HOME", pathJoin(base, ""))
--ASC24 maby not important:
--setenv("OMPI_MCA_btl_openib_warn_default_gid_prefix", "0")
--setenv("OMPI_MCA_orte_tmpdir_base", "/dev/shm")

-- UCX
-- prepend_path("PATH", pathJoin("/apps/ucx/bin"))
