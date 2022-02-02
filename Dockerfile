FROM mcr.microsoft.com/mssql/server
USER root
RUN mkdir -p /usr/src/app
COPY ./create_schema.sql ./usr/src/app
COPY ./entrypoint.sh ./usr/src/app
COPY ./import_data.sh ./usr/src/app
WORKDIR /usr/src/app
RUN chmod +x /usr/src/app/import_data.sh
ENV ACCEPT_EULA Y
ENV MSSQL_PID Express
USER mssql
ENTRYPOINT /bin/bash entrypoint.sh 
