local base = pathJoin("/apps/intel/oneapi/compiler/2024.1/")

family("icc")

whatis("Name: "..myModuleName())
whatis("Version: "..myModuleVersion())
whatis("Category: Compiler")

prepend_path("PATH", pathJoin(base, "bin"))
prepend_path("CPATH", pathJoin(base, "lib"))
prepend_path("LD_LIBRARY_PATH", pathJoin(base, "include/syc1"))
prepend_path("LD_LIBRARY_PATH", pathJoin(base, "lib32"))
prepend_path("CMAKE_PREFIX_PATH", "/apps/intel/oneapi")
