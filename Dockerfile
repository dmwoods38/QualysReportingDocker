FROM ubuntu
MAINTAINER <Dean Woods>
RUN apt-get update
RUN apt-get install -y git python-pip python-dev postgresql libpq-dev
RUN pip install git+https://github.com/dmwoods38/QualysReporting.git
RUN pip install requests
RUN pip install sqlalchemy
RUN pip install psycopg2
COPY reports.json /usr/local/lib/python2.7/dist-packages/qgreports/config/reports.json
COPY settings.py /usr/local/lib/python2.7/dist-packages/qgreports/config/settings.py
COPY runreports.sh /usr/local/bin/runreports.sh
RUN chmod 700 /usr/local/bin/runreports.sh
USER postgres
RUN /etc/init.d/postgresql start &&\
	psql --command "ALTER ROLE postgres with password 'qgpostgres';" &&\
	createdb qualysguard
RUN echo "local	all	all	password > /etc/postgresql/9.3/main/pg_hba.conf"
RUN echo "host	all	all	127.0.0.1/32	password>> /etc/postgresql/9.3/main/pg_hba.conf"
RUN echo "host	all	all	::1/128	password>> /etc/postgresql/9.3/main/pg_hba.conf"
USER root
RUN mkdir /root/reports
RUN mkdir /root/old_reports
RUN touch /root/unprocessed.log