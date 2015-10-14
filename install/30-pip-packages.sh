#!/usr/bin/env bash

packagesfile="$(dirname "$0")/pip-packages"

pip install -r "$packagesfile"
