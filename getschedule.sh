#!/bin/bash
PYTHONBIN=/usr/bin/python
QGREPORTS=/usr/local/lib/python2.7/dist-packages/qgreports
QGSCRIPTS=${QGREPORTS}/scripts
GETSCHEDULEFILE=${QGSCRIPTS}/get_scan_schedule_v2.py

echo "getschedule.sh: Getting scan schedule: get_scan_schedule_v2.py"
${PYTHONBIN} ${GETSCHEDULEFILE}