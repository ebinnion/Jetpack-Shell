#!/bin/bash

# RED='\033[0;31m'
# PURPLE='\033[0;35m'
# BLUE='\033[1;34m'
# GREEN='\033[1;32m'
# NC='\033[0m'

echo "Please enter the name of the app:"
read -r app_name

while [ "$php_version" != "php5.4" ] && [ "$php_version" != "php5.5" ] && [ "$php_version" != "php5.6" ] && [ "$php_version" != "php7.0" ] && [ "$php_version" != "php7.1" ]; do
	echo "Please select which version of PHP (php5.4, php5.5, php5.6, php7.0, or php7.1):"
	read -r php_version
done

echo "Please enter a domain to use for the site:"
read -r domain

echo "What is the name of your new site?"
read -r site_title

echo "What is the admin username?"
read -r admin_username

echo "What is the admin password?"
read -r admin_password

echo "What is the admin's email address?"
read -r admin_email

result=$( serverpilot apps create "$app_name" "$serverpilot_server_id" "$php_version" \
	'["'"$domain"'"]' '{"site_title":"'"$site_title"'","admin_user":"'"$admin_username"""'","admin_password":"'"$admin_password"'","admin_email":"'"$admin_email"'"}')

echo "$result"
