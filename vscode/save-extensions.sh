#!/usr/bin/env bash

# fail early and loudly
set -ex

# run from here
cd "$(dirname "$0")"

code --list-extensions > extensions
