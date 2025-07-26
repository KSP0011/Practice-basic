#!/bin/bash
SOURCE_DIR="/home/$USER/Documents"
BACKUP_DIR="/home/$USER/backups"
mkdir -p "$BACKUP_DIR"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
tar -czf "$BACKUP_DIR/backup_$TIMESTAMP.tar.gz" "$SOURCE_DIR"
echo "Backup complete: $BACKUP_DIR/backup_$TIMESTAMP.tar.gz"
