#!/bin/bash

set -eufx

clean_up () {
  docker rm --force --volumes database_test
  exit
}

trap clean_up EXIT

docker run --name database_test --detach salomvary/postgres-postgis
docker cp test.sh database_test:/test.sh

attempts=0
while [ $attempts -le 5 ]; do
  docker exec --user postgres database_test /test.sh && exit
  last_status=$?
  attempts=$((attempts+1))
  sleep 1
done

exit $last_status
