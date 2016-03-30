#!/bin/bash

PYTHONBIN=/usr/bin/python
QGREPORTS=/usr/local/lib/python2.7/dist-packages/qgreports
QGSCRIPTS=${QGREPORTS}/scripts
ADDREPORTSFILE=${QGSCRIPTS}/add_scheduled_reports.py
GETREPORTSFILE=${QGSCRIPTS}/get_reports.py
PGSQLSERVICE=/etc/init.d/postgresql

echo "Adding reports to the DB"
${PGSQLSERVICE} start
while ! netcat -vv localhost 5432
do
	echo "$(date) - waiting for DB to start"
	sleep 3
done
echo "$(date) -connected to DB successfully"
${PYTHONBIN} ${ADDREPORTSFILE}
