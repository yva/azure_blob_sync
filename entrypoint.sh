#!/bin/sh
set -e

if [ -z "$INPUT_SOURCE" ]; then
  echo "source directory is not set. Quitting."
  exit 1
fi
#az storage blob sync --source ${INPUT_SOURCE} -c '$web' --connection-string "${INPUT_CONNECTION_STRING}"
ls -la
az storage blob sync --source ${INPUT_SOURCE} -c '$web' --connection-string "${INPUT_CONNECTION_STRING}"