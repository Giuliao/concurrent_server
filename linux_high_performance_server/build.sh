#!/bin/sh

SOURCE_DIR=`pwd`
BUILD_DIR=${BUILD_DIR:-build} # if empty then build
mkdir -p ${BUILD_DIR} \
    && cd ${BUILD_DIR} \
    && cmake ${SOURCE_DIR} \
    && make $*

