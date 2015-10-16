# QualysReport Dockerfile
Dockerfile to help get up and running much quicker than going through the other setup steps.

##How to run.
1. Clone the files into some directory
2. Copy the reports.json and settings.py file into the directory
3. docker build -t qgreports .
4. docker run -it qgreports /usr/local/bin/runreports.sh 

runreports.sh will initialize the DB and run the script to grab and send reports.

Note that this assumes the structure for reports and the unprocessed log file will look something like this:
/root
	|
   | - reports/
	| - old_reports/
	| - unprocessed.log
