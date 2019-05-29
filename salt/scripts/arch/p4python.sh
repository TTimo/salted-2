#!/bin/bash
# See https://stackoverflow.com/a/55355009/1043757

set -e
mkdir -p /usr/local/lib/p4python
cp /usr/lib/libssl.so.1.0.0 /usr/local/lib/p4python/libssl.so
pip install --install-option="--ssl" --install-option=/usr/local/lib/p4python p4python
