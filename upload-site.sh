#!/bin/sh

AWS_ACCESS_KEY_ID=AKIAJ2JMTEPDELFJODNA
AWS_SECRET_ACCESS_KEY=FKSxv9BF0c4WLsQLoQd9Xr8as91JXu2djxxOmSKF

if [ $# -ne 1 ]
then
    echo "Enter your name with no spaces after upload-site.sh"
    exit
fi
    
aws s3 sync . s3://ada-lovelace-day/$1 --exclude '*' --include '*.html' --include '*.js' --include '*.css' --grants read=uri=http://acs.amazonaws.com/groups/global/AllUsers

echo "-------------------------------"
echo "Your site is at http://ada-lovelace-day.s3-website-eu-west-1.amazonaws.com/$1"