#!/bin/bash
echo "Starting backup..."
docker exec mysql-devtools sh -c 'exec mysqldump -uroot -p"my-secret-pw" database_devtools' | gzip > my-drupal.backup.sql.gz
echo "Backup completed successfully!"
