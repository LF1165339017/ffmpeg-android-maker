#!/usr/bin/env bash

./configure \
    --prefix=${INSTALL_DIR} \
    --host=${TARGET} \
    --with-sysroot=${SYSROOT_PATH} \
    --with-pic \
    --enable-static \
    --disable-shared \
    --disable-fast-install \
    CXX=${FAM_CXX} \
    CC=${FAM_CC} \
    CCLD=${FAM_LD} \
    CCAS=${FAM_AS} \
    RANLIB=${FAM_RANLIB} \
    AR=${FAM_AR} \
    RANLIB=${FAM_RANLIB} || exit 1

export FFMPEG_EXTRA_LD_FLAGS="${FFMPEG_EXTRA_LD_FLAGS} -lfdk-aac -lm"

${MAKE_EXECUTABLE} clean
${MAKE_EXECUTABLE} -j${HOST_NPROC}
${MAKE_EXECUTABLE} install