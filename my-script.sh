#!/bin/bash

echo "test result: ${TEST_RESULT}"
echo "environment: ${ENVIRON}"

if [[ $1 = 'test' ]]
then
  echo "test starts...."
  if [[ $2 = 'pass' ]]
  then
    echo "PASS"
    exit 0
  else
    echo "Failed"
    exit 1
  fi
fi

mkdir service1
mkdir service2

echo "Service1" >> ./service1/text.txt
echo "Service2" >> ./service2/text.txt