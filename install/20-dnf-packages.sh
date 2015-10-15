#!/bin/bash

configdir="$(dirname "$0")/.."
packagesfile="$(dirname "$0")/dnf-packages"
"$configdir/bin/dnfkick" "$packagesfile"
