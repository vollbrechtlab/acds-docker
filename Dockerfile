FROM linode/lamp

MAINTAINER Takao Shibamoto <takaos@iastate.edu>

WORKDIR /dockerwork

COPY . .

RUN rm /var/www/example.com/public_html -r
RUN mv public_html /var/www/example.com/
RUN mv my.cnf1 ~/.my.cnf
RUN chmod 0600 ~/.my.cnf
RUN chmod +x docker-entrypoint.sh

ENTRYPOINT /dockerwork/docker-entrypoint.sh

EXPOSE 80

