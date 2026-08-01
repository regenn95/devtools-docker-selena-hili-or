#!/bin/bash
echo "Starting data restoration..."
gunzip < my-drupal.backup.sql.gz | docker exec -i mysql-devtools sh -c "exec mysql -u root -p'my-secret-pw' --force database_devtools"
docker compose restart
echo "Restore completed successfully! The site is ready with your data."
