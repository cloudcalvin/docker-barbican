#!/bin/bash
DB_DIR=/var/lib/barbican
BARBICAN_DIST=/opt/barbican-src/bin/`ls /opt/barbican-src/requirements.txt | sort -n | tail -1`

cp -r /opt/barbican-src/etc/barbican /etc/

# Create a SQLite db location.
mkdir -p $DB_DIR

pip install uwsgi
#pip install $BARBICAN_DIST
