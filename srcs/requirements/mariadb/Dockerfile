FROM 		alpine:3.16.3

ARG			DB_NAME \
    		DB_USER \
    		DB_PASS \
			DB_ROOT

RUN 		apk update && apk add --no-cache mariadb mariadb-client

# creates a directory named "/var/run/mysqld"
# configures and creates "docker.cnf" in the "/etc/my.cnf.d"
# The "skip-host-cache" option is set in the "docker.cnf" configuration file to skip host cache.
# The "skip-name-resolve" option is set in the "docker.cnf" configuration file to skip name resolving.
# The "bind-address" option is set in the "docker.cnf" configuration file to bind to all available network interfaces.
# edits the "mariadb-server.cnf" configuration file by replacing the "skip-networking" option with "skip-networking=0".
RUN 		mkdir /var/run/mysqld; \
    		chmod 777 /var/run/mysqld; \
    		{ echo '[mysqld]'; \
    		  echo 'skip-host-cache'; \
    		  echo 'skip-name-resolve'; \
    		  echo 'bind-address=0.0.0.0'; \
    		} | tee  /etc/my.cnf.d/docker.cnf; \
    		sed -i "s|skip-networking|skip-networking=0|g" \
    			/etc/my.cnf.d/mariadb-server.cnf

RUN 		mysql_install_db --user=mysql --datadir=/var/lib/mysql

# copies the database script to container
COPY 		./conf/create_db.sh .

RUN 		chmod +x create_db.sh

# runs the script to create a new database and deletes the script from container
RUN 		sh create_db.sh && rm create_db.sh

USER 		mysql

# Specifies that the "/usr/bin/mysqld" binary should be executed with the "--skip-log-error" option.
# The "--skip-log-error" option tells MySQL to continue running even if errors are encountered while logging to the error log.
# This option is useful when running MySQL in a containerized environment where the error log may not be writable or available.
CMD 		["/usr/bin/mysqld", "--skip-log-error"]