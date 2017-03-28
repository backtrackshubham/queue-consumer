#!/bin/bash -e

INSTALL_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

mkdir -p "$INSTALL_DIR/node_modules"
npm install --prefix $INSTALL_DIR $INSTALL_DIR
ln -fs "$INSTALL_DIR/consumer" /usr/local/bin/consumer
