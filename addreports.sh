#!/bin/bash

PYTHONBIN=/usr/bin/python
QGREPORTS=/usr/local/lib/python2.7/dist-packages/qgreports
QGSCRIPTS=${QGREPORTS}/scripts
ADDREPORTSFILE=${QGSCRIPTS}/add_scheduled_reports.py
GETREPORTSFILE=${QGSCRIPTS}/get_reports.py

echo "Adding reports to the DB"
${PYTHONBIN} ${ADDREPORTSFILE}
