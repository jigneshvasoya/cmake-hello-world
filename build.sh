#!/bin/bash

BUILD_DIR="/tmp/build"
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

mkdir -p ${BUILD_DIR}
cd ${BUILD_DIR}
cmake ${SCRIPT_DIR} && make && \
checkinstall -y --type="debian" \
		--pkgname="cmake-hello" \
		--pkgversion="0.0.1" \
		--pkglicense="Jignesh Vasoya" \
		--maintainer="jigneshvasoya@gmail.com" \
		--showinstall=no \
		--backup=no || exit 1
exit 0
