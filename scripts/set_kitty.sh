#!/bin/bash

THEME_NAME="$1"

if [ -z "$THEME_NAME" ]; then
  echo "Error no kitty theme name provided"
  exit 1
fi

kitten theme --reload-in=all "$THEME_NAME"
