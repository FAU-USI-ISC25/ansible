local base = pathJoin("/apps/cuda-12.4/")

family("nvcc")

whatis("Name: "..myModuleName())
whatis("Version: "..myModuleVersion())
whatis("Category: Development")

prepend_path("PATH", pathJoin(base, "bin"))
prepend_path("LD_LIBRARY_PATH", pathJoin(base, "lib64"))
--prepend_path("LD_LIBRARY_PATH", pathJoin(base, "lib64/stubs")) seams like this shold NOT be detected

setenv("CUDA_HOME", pathJoin(base, ""))
