#!/bin/bash -e

INSTALL_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

command -v npm >/dev/null 2>&1 || { echo >&2 "I require npm, but it's not installed.  Aborting."; exit 1; }

mkdir -p "$INSTALL_DIR/node_modules"
npm install --prefix $INSTALL_DIR $INSTALL_DIR
ln -fs "$INSTALL_DIR/consumer" /usr/local/bin/consumer
