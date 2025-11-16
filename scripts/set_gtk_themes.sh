#!/bin/bash

THEME_NAME=$1
ICONE_THEME=$2

if [ -z "$THEME_NAME" ]; then
  echo "Usage $0 <theme name> [icon theme]"
  exit 1
fi
