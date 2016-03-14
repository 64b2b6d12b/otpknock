
#!/bin/bash

# Replace 198.51.100.50 with IP or FQDN of actual server
ip="198.51.100.50"
key=$(cat secret)
otp=$(oathtool --totp -s 60 $key)
sequence=$(sed 's/./&00 /g; s/ $//' <<< $otp)

for port in $sequence; do
    knock "$ip" "$port"
done
