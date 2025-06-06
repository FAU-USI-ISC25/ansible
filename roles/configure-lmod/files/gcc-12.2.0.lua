local base = pathJoin("/apps/gcc/gcc-12.2.0")

family("gcc")

whatis("Name: "..myModuleName())
whatis("Version: "..myModuleVersion())
whatis("Category: Compiler")

setenv("GCC_DIR", base)
prepend_path("PATH", pathJoin(base, "bin"))
prepend_path("LD_LIBRARY_PATH", pathJoin(base, "lib64"))
prepend_path("C_INCLUDE_PATH", pathJoin(base, "include"))
prepend_path("MANPATH", pathJoin(base, "share/man"))
prepend_path("INFOPATH", pathJoin(base, "share/info"))

setenv("CC", pathJoin(base, "bin/gcc"))
setenv("CXX", pathJoin(base, "bin/g++"))
