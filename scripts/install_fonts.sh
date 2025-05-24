#!/bin/bash

set -x
set -e

# Fonts to download
SUBSETS="latin"
URL_PATH="assets/downloaded"
OUT_DIR="content/$URL_PATH"
CSS="$OUT_DIR/google_fonts.css"

mkdir -p "$OUT_DIR"
INLINE_CSS="$(curl \
  -H 'User-Agent: Mozilla/5.0 (X11; Linux i686; rv:138.0) Gecko/20100101 Firefox/138.0' \
  "https://fonts.googleapis.com/css?family=Roboto+Slab|Ruda&subset=latin")"

echo "$INLINE_CSS" | sed -r -e "s,^([^(]*[(])[^()]*/([^()/]*)([)].*)$,\1\2\3," > "$CSS"
echo "$INLINE_CSS" | grep '^[ \t]*src:[ \t]*url' |
sed -r -e 's,^[^(]*[(]([^(]*)[)].*$,\1,' |
while read font_url; do
  echo "Downloading ($font_url)..."
  curl --output-dir "$OUT_DIR" -O "$font_url"
done

curl --output-dir "$OUT_DIR" -o normalize.css \
  "https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.css"
curl --output-dir "$OUT_DIR" -o font_awesome.css \
  "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.css"

echo "Fonts and CSS downloaded to $OUT_DIR"

