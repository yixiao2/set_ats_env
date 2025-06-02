# COMPASS - 25Jan
module purge
module load gcc/11.4.1
module load openmpi/5.0.5
module load cmake/3.27.9-gcc_11.4.1
module load openblas/0.3.28
#module load python/3.10.10-gcc_11.4.1
mamba activate watershed_workflow_1.5.0_25Jan
module load netcdf-c/4.9.2-gcc_11.4.1-openmpi_5.0.5
module load hdf5/1.14.3-gcc_11.4.1-openmpi_5.0.5

#export LD_LIBRARY_PATH=/usr/lib64:$LD_LIBRARY_PATH
export BLAS_PREFIX=$(pkg-config openblas --variable=libdir)
export OMPI_PREFIX=$(pkg-config ompi --variable=prefix)


# ATS
export ATS_BASE=/compass/ber200003/xiao284/softwares/ats-152-250212
export ATS_BUILD_TYPE=Release
export ATS_VERSION=ats-1.5
#export OPENMPI_DIR=$MSC_OPENMPI_ROOT
#export OPENBLAS_DIR=$MSC_OPENBLAS_ROOT
export OPENMPI_DIR=$OMPI_PREFIX
export OPENBLAS_DIR=$BLAS_PREFIX
export LD_LIBRARY_PATH=$BLAS_PREFIX:$LD_LIBRARY_PATH

export AMANZI_TPLS_BUILD_DIR=${ATS_BASE}/amanzi_tpls-build-${ATS_VERSION}-${ATS_BUILD_TYPE}
export AMANZI_TPLS_DIR=${ATS_BASE}/amanzi_tpls-install-${ATS_VERSION}-${ATS_BUILD_TYPE}

export AMANZI_SRC_DIR=${ATS_BASE}/repos/amanzi
export AMANZI_BUILD_DIR=${ATS_BASE}/amanzi-build-${ATS_VERSION}-${ATS_BUILD_TYPE}
export AMANZI_DIR=${ATS_BASE}/amanzi-install-${ATS_VERSION}-${ATS_BUILD_TYPE}

export ATS_SRC_DIR=${AMANZI_SRC_DIR}/src/physics/ats
export ATS_DIR=${AMANZI_DIR}

export PATH=${ATS_DIR}/bin:${PATH}
export PATH=${AMANZI_TPLS_DIR}/bin:${PATH}
export PYTHONPATH=${ATS_SRC_DIR}/tools/utils:${PYTHONPATH}
export PYTHONPATH=${AMANZI_TPLS_DIR}/SEACAS/lib:${PYTHONPATH}


