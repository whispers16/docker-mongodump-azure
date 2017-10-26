# docker-mongodump-azure
A Docker image performing backups via mongodump into an Azure Storage Account and cron scheduler.

# Usage
Single-Shot-Run:
```
  docker run -d \
    --name mongodb-azure-backup \
    --link <mongodb container>:mongodb \
    [-e "MONGODB_HOST=<mongodb host> \]
    -e "MONGODB_DB=<database name>" \
    -e "AZURE_CONTAINER=<storage container name>" \
    -e "AZURE_STORAGE_ACCOUNT=<storage account name>" \
    -e "AZURE_STORAGE_KEY=<storage account key>" \
    -e "CRON_TIME=<'0 0 * * *' midnight default>" \
    holobuilder/mongodump-azure
```