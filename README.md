# otpknock
RFC 6238 TOTP + knockd = awesome!

## Dependencies:

* [knockd](https://github.com/jvinet/knock) (on server and client)
* [oathtool](http://download.savannah.gnu.org/releases/oath-toolkit)

## Time:

Both the server (machine running the knockd daemon) and client need to be synced with a reliable NTP server in order for TOTP to generate the correct tokens

## Usage:

The script assumes you have already generated a hex secret as a file called `secret` in your home directory. If you do not yet have this file, it can be generated with `openssl rand -hex 8 > secret`. The file should be read-only (or read/write) e.g. `chmod 0400 secret`. Have the script run every minute by editing your crontab file with the line `* * * * * /root/otpknock.sh`

On the client side, simply run `chmod +x otpknock-client.sh` and `./otpknock-client.sh` after modifying the IP/FQDN in the script.

## Demo:

[![asciicast](https://asciinema.org/a/djq8fp6v5ndmiat0pxrq044nb.png)](https://asciinema.org/a/djq8fp6v5ndmiat0pxrq044nb)

## Credit:

Thanks to the [/r/bash community](https://www.reddit.com/r/bash/comments/4a6jsb/port_knocking_otp_idea/) to help bring this script to life :)
