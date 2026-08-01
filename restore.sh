#!/bin/bash
echo "Starting data restoration..."

DB_USER="root"
DB_PASS="my-secret-pw"
DB_NAME="database_devtools"

# Explicitly creating the database before restore as required
docker exec mysql-devtools sh -c "exec mysqladmin -u$DB_USER -p$DB_PASS create $DB_NAME" 2>/dev/null || true

# Restoring the data
gunzip < my-drupal.backup.sql.gz | docker exec -i mysql-devtools sh -c "exec mysql -u$DB_USER -p$DB_PASS --force"

docker compose restart
echo "Restore completed successfully! The site is ready with your data."
