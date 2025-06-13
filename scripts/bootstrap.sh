#!/bin/bash

set -x
set -e

MY_DIR="$(dirname "$0")"

# Current "elegant" theme does not require fonts.
#"$MY_DIR/install_fonts.sh"
pelican content -s publishconf.py
cp google*.html output/
