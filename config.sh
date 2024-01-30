#!/bin/bash

if [[ -d "config/" ]]
then
  echo "From cache"
  ls -la config/
  cat config/service1/service1.json
  cat config/service2/service2.json
else
  sleep 5
  mkdir config 
  mkdir config/service1 config/service2
  touch config/service1/service1.json
  touch config/service2/service2.json
fi

echo "{'service': 'one'}" > config/service1/service1.json
echo "{'service': 2}" > config/service2/service2.json

