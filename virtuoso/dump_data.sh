virtuoso_container='4c995d5aa75c'
# All from <https://hub.docker.com/r/tenforce/virtuoso/>

# dump data 
docker exec -it $virtuoso_container bash
isql-v -U dba -P $DBA_PASSWORD
SQL> dump_nquads ('dumps', 1, 10000000, 1);

# backup virtuoso
docker exec -i $virtuoso_container mkdir -p backups
docker exec -it $virtuoso_container isql-v 
    exec('checkpoint');
    backup_context_clear();
    backup_online('backup_',30000,0,vector('backups'));
    exit;

#Restore backoup
    docker run --rm  -it -v path-to-your-database:/data tenforce/virtuoso virtuoso-t +restore-backup backups/backup_ +configfile /data/virtuoso.ini
