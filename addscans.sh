#!/bin/bash

PYTHONBIN=/usr/bin/python
QGREPORTS=/usr/local/lib/python2.7/dist-packages/qgreports
QGSCRIPTS=${QGREPORTS}/scripts
ADDSCANSFILE=${QGSCRIPTS}/add_scans.py
QGCONFIGS=${QGREPORTS}/config
SCAN_CONFIG=${QGCONFIGS}/scan_config.json

echo "GETSCANS.SH: Getting scans: add_scans.py"
${PYTHONBIN} ${ADDSCANSFILE} ${SCAN_CONFIG}
