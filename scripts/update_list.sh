#!/bin/bash

noOfPackages=$(apt-get -s dist-upgrade | awk '/^Inst/ { print $2 }'|wc -l)
echo $noOfPackages "packages"
