FROM linode/lamp

MAINTAINER Takao Shibamoto <takaos@iastate.edu>

WORKDIR /dockerwork

COPY my.cnf1 .
COPY my.cnf2  .
COPY sqldump.acds.20180624.sql  .
COPY setup_db.sql  .
COPY docker-entrypoint.sh  .

RUN apt-get update -y && apt-get install php5-mysql -y
RUN rm -rf /var/www/example.com/public_html
COPY public_html /var/www/example.com/public_html
RUN ls /var/www/example.com/
#RUN mv public_html /var/www/example.com/
RUN chown www-data:www-data /var/www/example.com/public_html/tmp
RUN mv my.cnf1 ~/.my.cnf
RUN chmod 0600 ~/.my.cnf
RUN chmod +x docker-entrypoint.sh

ENTRYPOINT /dockerwork/docker-entrypoint.sh

EXPOSE 80

