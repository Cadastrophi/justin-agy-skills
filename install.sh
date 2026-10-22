#!/bin/sh
set -eu
target="$HOME/.gemini/config/skills"
replace=0
[ "${1:-}" = "--replace" ] && replace=1
source="$(cd "$(dirname "$0")" && pwd)/skills"
backup="$HOME/.justin-agy-skills/backups/$(date +%Y%m%d-%H%M%S)"
mkdir -p "$target"

for dir in "$source"/*/; do
  name="$(basename "$dir")"; dir="${dir%/}"; link="$target/$name"
  if [ -L "$link" ]; then
    [ "$(readlink "$link")" = "$dir" ] && { echo "ok        $name"; continue; }
    rm "$link"
  elif [ -e "$link" ]; then
    if [ "$replace" = 1 ]; then mkdir -p "$backup"; mv "$link" "$backup/"
    else echo "CONFLICT  $name (real folder; rerun with --replace)"; continue; fi
  fi
  ln -s "$dir" "$link"
  echo "linked    $name"
done
