#!/bin/bash

echo ./scan -t 192.168.1.1
./scan -t 192.168.1.1

echo ./scan -t 192.168.1.1 -p 80
./scan -t 192.168.1.1 -p 80

echo ./scan -t 192.168.1.1 -p 81
./scan -t 192.168.1.1 -p 81

echo ./scan -t 192.168.1.1 -p asdf
./scan -t 192.168.1.1 -p asdf

echo ./scan -t 256.256.256.256
./scan -t 256.256.256.256

echo ./scan -t 256.256.256.256 -p 80
./scan -t 256.256.256.256 -p 80

echo ./scan -t asdf
./scan -t asdf

echo ./scan -t asdf -p 80
./scan -t asdf -p 80

echo ./scan -p 80
./scan -p 80

echo ./scan -p asdf
./scan -p asdf

echo ./scan
./scan

echo ./scan -p 80 -t 192.168.1.1
./scan -p 80 -t 192.168.1.1

echo ./scan -p asdf -t 192.168.1.1
./scan -p asdf -t 192.168.1.1

echo ./scan -password -t 192.168.1.1
./scan -password -t 192.168.1.1

echo ./scan -t 192.168.1.1 -password
./scan -t 192.168.1.1 -password

echo ./scan -t 192.168.1.1 -willThisWork
./scan -t 192.168.1.1 -willThisWork

echo ./scan -t192.158.1.1
./scan -t192.158.1.1

echo ./scan -p 80 -t198.157.3.2
./scan -p 80 -t198.157.3.2

echo ./scan -p 80 -t 192.168.1.1 -p 81
./scan -p 80 -t 192.168.1.1 -p 81

echo ./scan -p 80  -t 192.168.1.1 -t 127.0.0.1
./scan -p 80  -t 192.168.1.1 -t 127.0.0.1

echo "FINISHED TESTS"