#!/bin/bash

TABLE=tbl_init_status
SQL_EXISTS="SELECT (EXISTS (SELECT FROM pg_tables WHERE schemaname = 'public' AND tablename  = '$TABLE'))::int;"
STATUS=$( psql -U $POSTGRES_USER -d $POSTGRES_DB -c "$SQL_EXISTS" --pset footer -t )

# making sure that we do not run the script if the DB was already initialized
if [ "$STATUS" -eq 0 ]; then
    psql -U $POSTGRES_USER -d $POSTGRES_DB -a -f /app/scripts/db/dump.sql
else
    echo "DB already initialized"
fi
