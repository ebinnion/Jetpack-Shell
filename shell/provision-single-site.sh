#!/bin/bash

RED='\033[0;31m'
PURPLE='\033[0;35m'
BLUE='\033[1;34m'
GREEN='\033[1;32m'
NC='\033[0m'

echo "Please enter the name of the app:"
read app_name

echo "Please choose from one of the following system users:"
serverpilot sysusers
read sysuser

echo "Please select which version of PHP (php5.4, php5.5, php5.6, php7.0, or php7.1):"
read php_version

echo "Please enter a space and/or comma separated list of domains to use for the site:"
read domains

echo "What is the name of your new site?"
read site_title

echo "What is the admin username?"
read admin_username

echo "What is the admin password?"
read admin_password

echo "What is the admin's email address?"
read admin_email



# serverpilot apps create wordpress RvnwAIfuENyjUVnl php7.0 '["example.com","www.example.com"]' '{"site_title":"My WordPress Site","admin_user":"admin","admin_password":"mypassword","admin_email":"example@example.com"}'
