#!/usr/bin/env bash

source ${SCRIPTS_DIR}/common-functions.sh

LIBXML2_VERSION=2.9.10

downloadTarArchive \
  "libxml2" \
  "http://xmlsoft.org/sources/libxml2-${LIBXML2_VERSION}.tar.gz" \