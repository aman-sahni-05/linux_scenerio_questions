
set -e

SOURCE_DIR=/home/persistent/docker
BACKUP_DIR=/home/persistent/linux_practice

TIMESTAMP=$(date +%Y-%m-%d)

BACKUP_FILENAME="data_${TIMESTAMP}.tar.gz"

tar -czf "${BACKUP_DIR}/${BACKUP_FILENAME}" -C "$(dirname "${SOURCE_DIR}")" "$(basename "${SOURCE_DIR}")"

echo "Backup creaeted successfully: ${BACKUP_FILENAME}"
