DB_CONTAINER="pg_db"

BACKUP_FILE="/backup/testdb_$(date +%F_%H-%M-%S).sql"

docker exec $DB_CONTAINER pg_dump -U user testdb > $BACKUP_FILE

echo "Backup saved to $BACKUP_FILE"
