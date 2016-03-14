#!/bin/bash

key=$(cat secret)
otp=$(oathtool --totp -s 60 $key)
sequence=$(sed 's/./&00,/g; s/,$//' <<< $otp)

sed -i -r 's/^(\s*sequence\s*=).*$/\1 '"$sequence"'/' /etc/knockd.conf

service knockd restart
