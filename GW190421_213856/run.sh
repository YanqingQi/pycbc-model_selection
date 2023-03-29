#!/bin/sh

# configuration files
CONFIG=inference-GW190421_213856.ini

OUTPUT_PATH=GW190421_213856_inference.hdf

# the following sets the number of cores to use; adjust as needed to
# your computer's capabilities
NPROCS=50

# run sampler
# Running with OMP_NUM_THREADS=1 stops lalsimulation
# from spawning multiple jobs that would otherwise be used
# by pycbc_inference and cause a reduced runtime.
OMP_NUM_THREADS=1 \
pycbc_inference --verbose \
    --seed 1897234 \
    --config-file ${CONFIG} \
    --output-file ${OUTPUT_PATH} \
    --nprocesses ${NPROCS} \
    --force
