#!/usr/bin/bash

source $1

echo "Start script - backup.sh"

hour=$(date +%H%M)
day=$(date +%Y%m%d)

backup_name="$db_name_bkp-$day-$hour-full_backup.slq"
backup="$backup_path$backup_name"

if [ ! -d $backup_path ];then
echo "Create file $backup_path";
mkdir $backup_path
fi

echo "backup database $db_name_bkp"

mysqldump -u $user_db_bkp --password=$db_pwd_bkp --databases $db_name_bkp > $backup

echo "Done -> $backup"

echo "End script - backup.sh"
