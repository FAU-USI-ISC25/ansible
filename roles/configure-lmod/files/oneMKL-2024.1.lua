local base = pathJoin("/apps/intel/oneapi/mkl/2024.1/")

familiy("oneMKL")

setenv("MKLROOT", pathJoin(base, ""))
prepend_path("CPATH", pathJoin(base, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(base, "lib"))
