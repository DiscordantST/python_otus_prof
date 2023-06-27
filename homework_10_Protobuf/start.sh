#!/bin/sh
set -xe

pip3 install pip==22.3.1 --break-system-packages
pip3 install -r requirements.txt
# protoc-c --c_out=. deviceapps.proto
# protoc --python_out=. deviceapps.proto
pip3 install .
python3 setup.py test
