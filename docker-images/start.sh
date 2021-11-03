#! /usr/bin/env sh
set -e

echo "python version: $(python --version)"

python -c 'import sys; print("python version: {}.{}".format(sys.version_info.major, sys.version_info.minor))'
