#!/bin/bash

for dir in */; do
  echo "* ${dir%/}" >> dirs.txt

done



