#!/bin/bash
set -x
aws s3 ls | cut -d ' ' -f 3 | grep -E ^dev[-]
echo "welcome to bro movie"
echo "welcome to devseccops batch $1 $2"
