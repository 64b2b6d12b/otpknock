
#!/bin/bash

key=$(cat secret)
otp=$(oathtool --totp -s 60 $key)
sequence=$(sed 's/\(.\)/\100 /g' <<< $otp)

# Replace 198.51.100.50 with IP or FQDN of actual server

knock 198.51.100.50 $sequence
