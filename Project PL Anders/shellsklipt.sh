#!/bin/bash
FAIL=failcases/*
for item in $FAIL
do
echo "-----------------------------------------------------------"
echo $item
    ./QUENYARGOLINT  $item
done
