#!/bin/bash

if [[ -d "config/" ]]
then
  exit 0
fi

mkdir config 
mkdir config/service1 config/service2
touch config/service1/service1.json
touch config/service2/service2.json

sleep 5

echo "{'service': 1}" > config/service1/service1.json
echo "{'service': 2}" > config/service2/service2.json
