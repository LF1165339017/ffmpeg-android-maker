#!/usr/bin/env bash

source ${SCRIPTS_DIR}/common-functions.sh

FONTCONFIG_VERSION=2.13.92

downloadTarArchive \
  "libfontconfig" \
  "https://www.freedesktop.org/software/fontconfig/release/fontconfig-${FONTCONFIG_VERSION}.tar.gz" \