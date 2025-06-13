#!/bin/bash

set -x
set -e

MY_DIR="$(dirname "$0")"

"$MY_DIR/install_fonts.sh"
pelican content --verbose -s publishconf.py
