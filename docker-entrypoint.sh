#!/bin/sh

set -e

PL_DB_HOST=${PL_DB_HOST:-localhost}
PL_DB_PORT=${PL_DB_PORT:-3306}
PL_DB_NAME=${PL_DB_NAME:-postleaf}
PL_DB_USER=${PL_DB_USER:-postleaf}
PL_DB_PASS=${PL_DB_PASS:-postleaf}
PL_DB_PREFIX=${PL_DB_PREFIX:-postleaf_}
PL_DB_INIT=${PL_DB_INIT:-false}

sed -i "s/PL_DB_HOST/${PL_DB_HOST}/g" $PL_DB_FILE
sed -i "s/PL_DB_PORT/${PL_DB_PORT}/g" $PL_DB_FILE
sed -i "s/PL_DB_NAME/${PL_DB_NAME}/g" $PL_DB_FILE
sed -i "s/PL_DB_USER/${PL_DB_USER}/g" $PL_DB_FILE
sed -i "s/PL_DB_PASS/${PL_DB_PASS}/g" $PL_DB_FILE
sed -i "s/PL_DB_PREFIX/${PL_DB_PREFIX}/g" $PL_DB_FILE

if [ "${PL_DB_INIT}" = "true" ]
then
    mysql -h ${PL_DB_HOST} -u ${PL_DB_USER} -p${PL_DB_PASS} ${PL_DB_NAME} < $PL_DIR/postleaf.sql
fi

exec "$@"
