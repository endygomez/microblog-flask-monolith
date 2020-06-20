FLASK_APP=microblog.py
FLASK_DEBUG=1
SERVER_NAME=0.0.0.0:5000

#Local Case
#python -m smtpd -n -c DebuggingServer localhost:8025
MAIL_SERVER=localhost
MAIL_PORT=8025

#Email Case with mailtrap
#MAIL_SERVER=smtp.mailtrap.io
#MAIL_PORT=587
#MAIL_USE_TLS=1
#MAIL_USERNAME=${MAIL_USERNAME)
#MAIL_PASSWORD=${MAIL_PASSWORD)