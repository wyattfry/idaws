#!/usr/bin/env bash
set -euo pipefail

SRC="${1:-$HOME/Videos/Screencasts/the-facility.webm}"
OUT_DIR="${2:-$HOME/idaws/shots}"
NAME="$(basename "${SRC%.*}")"
OUT="$OUT_DIR/${NAME}-compressed.webm"

mkdir -p "$OUT_DIR"

ffmpeg -y -i "$SRC" \
  -c:v libvpx-vp9 -b:v 0 -crf 32 -deadline good -cpu-used 2 \
  -vf "scale='min(1280,iw)':-2" \
  -c:a libopus -b:a 96k \
  "$OUT"

echo "Done: $OUT"
ls -lh "$SRC" "$OUT"
