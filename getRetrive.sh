#!/bin/bash

day=$(date +"%Y%m%d")

echo Get Retrieve IUC
sfdx force:mdapi:retrieve -u prod -r bkp/$day-prod-unpackaged.zip -k ./package.xml
