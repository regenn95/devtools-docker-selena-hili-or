#!/bin/bash
echo "Starting backup..."

# Using variables for credentials as recommended
DB_USER="root"
DB_PASS="my-secret-pw"

# Using the explicit --all-databases flag as required
docker exec mysql-devtools sh -c "exec mysqldump --all-databases -u$DB_USER -p$DB_PASS" | gzip > my-drupal.backup.sql.gz

echo "Backup completed successfully!"
