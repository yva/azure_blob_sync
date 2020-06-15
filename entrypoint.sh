#!/bin/sh
set -e

if [ -z "$INPUT_SOURCE" ]; then
  echo "source directory is not set. Quitting."
  exit 1
fi
mkdir transfer
cp -R ${INPUT_SOURCE} transfer
az storage blob sync --source transfer -c '$web' --connection-string "${INPUT_CONNECTION_STRING}"