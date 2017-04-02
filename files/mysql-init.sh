#!/bin/bash

if [ ! -f /var/lib/mysql/ibdata1 ]; then
    mysql_install_db
fi

exec /sbin/setuser mysql /usr/bin/mysqld_safe
