#!/bin/bash
if [[ $1 = 'test' ]]
then
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