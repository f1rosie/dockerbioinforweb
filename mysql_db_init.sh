#!/bin/bash
echo "=> Creating database $1"

/usr/bin/mysqld_safe > /dev/null 2>&1 &

RET=1
while [[ RET -ne 0 ]]; do
    echo "=> Waiting for confirmation of MySQL service startup"
    sleep 5
    mysql -uroot -e "status" > /dev/null 2>&1
    RET=$?
done
#mysql -u root -e "create database testdb"; 
mysql -ujingjing -p123456 -e "CREATE DATABASE team_6_jl"
mysql -ujingjing -p123456 team_6_jl < /Dump_team_6_jl.sql


mysqladmin -uroot shutdown

echo "=> Done!"
