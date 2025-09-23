# WSL - 20250523
# https://github.com/amanzi/ats/commit/78105a0adfce375644f2a294d250fa4ee40170cf

mamba activate watershed_workflow_1.5

export OMPI_PREFIX=$(pkg-config ompi --variable=prefix)


# ATS
export ATS_BASE=/home/xiao284/softwares/ats-master-250610
export ATS_BUILD_TYPE=Release
export ATS_VERSION=master
export OPENMPI_DIR=$OMPI_PREFIX
#export OPENBLAS_DIR=$BLAS_PREFIX
#export LD_LIBRARY_PATH=$BLAS_PREFIX:$LD_LIBRARY_PATH

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

export LD_LIBRARY_PATH=$AMANZI_TPLS_DIR/lib:$LD_LIBRARY_PATH
