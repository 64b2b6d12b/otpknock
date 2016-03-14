# otpknock
RFC 6238 TOTP + knockd = awesome!

## Dependencies:

* [knockd](https://github.com/jvinet/knock)
* [oathtool](http://download.savannah.gnu.org/releases/oath-toolkit)

## Usage:

The script assumes you have already generated a hex secret as a file called `secret` in your home directory. If you do not yet have this file, it can be generated with `openssl rand -hex 8 > secret`. The file should be read-only (or read/write) e.g. `chmod 0400 secret`. Have the script run every minute by editing your crontab file with the line `* * * * * /root/otpknock.sh`
