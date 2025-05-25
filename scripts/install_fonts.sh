#!/bin/bash

set -x
set -e

# Fonts to download
SUBSETS="latin"
URL_PATH="assets/downloaded"
FINAL_DIR="content/$URL_PATH"
OUT_DIR="tmp_downloaded_assets"
CSS="$OUT_DIR/google_fonts.css"

rm -rf "$OUT_DIR"
mkdir -p "$OUT_DIR"
mkdir -p "$FINAL_DIR"

#
# Example:
# css_and_fonts new_css 'https://css.com/xxx.css?blah'
#
function css_and_fonts()
{
  local FINAL_CSS="$OUT_DIR/$1"
  local ORIGINAL_CSS="$2"
  local TEMP_FILE="$(mktemp)"
  trap "rm '$TEMP_FILE' -f" KILL
  trap "rm '$TEMP_FILE' -f" TERM

  curl -o "$TEMP_FILE" \
    -H 'User-Agent: Mozilla/5.0 (X11; Linux i686; rv:138.0) Gecko/20100101 Firefox/138.0' \
    "$ORIGINAL_CSS"
  sed -r -e 's,(url[[:space:]]*[^(]*[(]"?)[^"()]*/([^()/"]*)("?[)]),\1\2\3,g' "$TEMP_FILE" > "$FINAL_CSS"
  grep -E 'url[[:space:]]*[(]' "$TEMP_FILE" |
  sed -r -e 's,url[[:space:]]*[(],\nurl(,g' |
  grep -E 'url[(]' |
  sed -r -e 's,^url[(]"?([^()"#?]*)[()"#?].*$,\1,' |
  sort -u |
  while read font_url; do
    if echo "$font_url" | grep -E '^http'; then :; else
      font_url="$(dirname "$ORIGINAL_CSS")/$font_url"
    fi
    echo "Downloading ($font_url)..."
    curl --output-dir "$OUT_DIR" -O "$font_url"
  done
}

css_and_fonts "google_fonts.css" \
  "https://fonts.googleapis.com/css?family=Roboto+Slab|Ruda&subset=$SUBSETS"
css_and_fonts normalize.css \
  "https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.css"
css_and_fonts font_awesome.css \
  "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.css"

echo "Fonts and CSS downloaded to $OUT_DIR."

echo "Replacing ($FINAL_DIR) with ($OUT_DIR)."
rm -rf "$FINAL_DIR"
mv "$OUT_DIR" "$FINAL_DIR"
