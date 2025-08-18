ssh peter@172.16.239.10
# password: Sp!dy
psql
CREATE USER kodekloud_joy WITH PASSWORD 'YchZHRcLkL';
CREATE DATABASE kodekloud_db8;
GRANT ALL PRIVILEGES ON DATABASE kodekloud_db8 TO kodekloud_joy;
#verify
\du
#List databases:
\l
