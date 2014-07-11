#!/bin/bash
DB_DIR=/var/lib/barbican
BARBICAN_DIST=/opt/barbican-src/dist/`ls /opt/barbican-src/dist | sort -n | tail -1`

cp -r /opt/barbican-src/etc/barbican /etc/

# Create a SQLite db location.
mkdir -p $DB_DIR

pip install uwsgi
pip install $BARBICAN_DIST