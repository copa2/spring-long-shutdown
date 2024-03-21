#!/bin/bash

./gradlew clean assemble
java -jar build/libs/demo-0.0.1-SNAPSHOT.jar &
# Graceful shutdown is now faster than immediate
#java -jar build/libs/demo-0.0.1-SNAPSHOT.jar --server.shutdown=graceful &
PID=$!
echo "Started with PID $PID, waiting 5 seconds for startup"
sleep 5
echo "Stop with SIGTERM (pid: $PID)"
kill -s SIGTERM $PID
for i in {1..20}; do
  sleep 1
  ps -p $PID >/dev/null || break
  echo "$(date +"%H:%M:%S") Still running $i"
done
