#!/bin/sh 
ls
file="filename.php"
bucket="my-bucket"
resource="/${bucket}/${file}"
contentType="text/html"
dateValue="`date +'%a, %d %b %Y %H:%M:%S %z'`"
stringToSign="GET\n\n${contentType}\n${dateValue}\n${resource}"
s3Key='ABCABCABCABCABCABCAB'
s3Secret='xyzxyzyxyzxyzxyzxyzxyzxyzxyzxyzxyzxyzxyzx'
signature=`/bin/echo -en "$stringToSign" | openssl sha1 -hmac ${s3Secret} -      binary | base64`

curl -v -H "Host:lssngen-updates-east.s3.amazonaws.com" \
        -H "Date:${dateValue}" \
        -H "Content-Type:${contentType}" \
        -H "Authorization: AWS ${s3Key}:${signature}" \
        https://${bucket}.s3.amazonaws.com/${file}
