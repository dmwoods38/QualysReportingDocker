FROM ubuntu
MAINTAINER <Dean Woods>
RUN apt-get update --fix-missing
RUN apt-get install -y git python-pip python-dev libffi-dev libssl-dev netcat
RUN pip install --upgrade requests[security]
RUN pip install elasticsearch
RUN pip install --upgrade requests-aws4auth
RUN pip install git+https://github.com/dmwoods38/QualysReporting.git@dev
RUN mkdir /root/reports
RUN mkdir /root/old_reports
RUN touch /root/unprocessed.log
COPY reports.json /usr/local/lib/python2.7/dist-packages/qgreports/config/reports.json
COPY settings.py /usr/local/lib/python2.7/dist-packages/qgreports/config/settings.py
COPY runreports.sh /usr/local/bin/runreports.sh
COPY addreports.sh /usr/local/bin/addreports.sh
RUN chmod 700 /usr/local/bin/runreports.sh
RUN chmod 700 /usr/local/bin/addreports.sh
RUN chmod 700 /usr/local/lib/python2.7/dist-packages/qgreports/config/reports.json
RUN chmod 700 /usr/local/lib/python2.7/dist-packages/qgreports/config/settings.py