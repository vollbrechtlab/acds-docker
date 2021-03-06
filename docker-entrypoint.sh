echo "starting entrypoint" && \
service apache2 start && \
service mysql start && \
service mysql start && \
mysql -sfu root < setup_db.sql && \
echo "db initialized, now loading sql dump" && \
rm ~/.my.cnf && mv my.cnf2 ~/.my.cnf && chmod 0600 ~/.my.cnf && \
zcat sqldump.acds.20180624.sql.gz | mysql -u acds acds && \
rm ~/.my.cnf && \
echo "db setup done" && \
bash
