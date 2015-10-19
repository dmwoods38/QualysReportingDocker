#!/bin/bash

PYTHONBIN=/usr/bin/python
QGREPORTS=/usr/local/lib/python2.7/dist-packages/qgreports
QGSCRIPTS=${QGREPORTS}/scripts
GETREPORTSFILE=${QGSCRIPTS}/get_reports.py
PGSQLSERVICE=/etc/init.d/postgresql

echo "Getting reports"
${PGSQLSERVICE} start && ${PYTHONBIN} ${GETREPORTSFILE}
