#/bin/bash
CONFIG_DIR=/etc/barbican

echo "Starting barbican..."
uwsgi --master --emperor $CONFIG_DIR/vassals