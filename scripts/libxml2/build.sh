#!/usr/bin/env bash

./configure \
    --prefix=${INSTALL_DIR} \
    --host=${TARGET} \
    --with-sysroot=${SYSROOT_PATH} \
    --with-pic \
    --enable-static \
    --disable-shared \
    --disable-fast-install \
    --with-history \
    --disable-debug \
    --disable-rpath \
    --disable-docs \
    CC=${FAM_CC} \
    AR=${FAM_AR} \
    RANLIB=${FAM_RANLIB} || exit 1

${MAKE_EXECUTABLE} clean
${MAKE_EXECUTABLE} -j${HOST_NPROC}
${MAKE_EXECUTABLE} install