#!/usr/bin/env bash

./configure \
    --prefix=${INSTALL_DIR} \
    --host=${TARGET} \
    --with-sysroot=${SYSROOT_PATH} \
    --with-pic \
    --disable-static \
    --enable-shared \
    --disable-debug \
    --disable-fast-install \
    --disable-rpath \
    --enable-libxml2 \
    --disable-docs \
    CC=${FAM_CC} \
    AR=${FAM_AR} \
    RANLIB=${FAM_RANLIB} || exit 1

export FFMPEG_EXTRA_LD_FLAGS="${FFMPEG_EXTRA_LD_FLAGS} -lfontconfig"

${MAKE_EXECUTABLE} clean
${MAKE_EXECUTABLE} -j${HOST_NPROC}
${MAKE_EXECUTABLE} install