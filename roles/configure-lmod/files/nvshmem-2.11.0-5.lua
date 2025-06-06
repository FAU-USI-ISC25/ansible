local base = pathJoin("/apps/nvshmem2/")

family("nvshmem")

whatis("Name: "..myModuleName())
whatis("Version: "..myModuleVersion())
whatis("Category: Development")

prepend_path("PATH", pathJoin(base, "bin"))
prepend_path("LD_LIBRARY_PATH", pathJoin(base, "lib"))
prepend_path("CPATH", pathJoin(base, "include"))
