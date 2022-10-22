#!/usr/bin/env bash

source ${SCRIPTS_DIR}/common-functions.sh

FREETYPE_VERSION=2.0.1

downloadTarArchive \
  "libfdk-aac" \
  "https://sourceforge.net/projects/opencore-amr/files/fdk-aac/fdk-aac-${FREETYPE_VERSION}.tar.gz" \
