#!/usr/bin/env bash
curl https://raw.githubusercontent.com/Schm1tz1/docker-vpn/master/vpn.sh --output vpn.sh
source vpn.sh

# Additional variables that are passed to docker for SOCKS port (using pproxy) and docker arguments for a bind-mount
export SOCKS_PORT=10080
export DOCKER_EXTRA_ARGS='--mount type=bind,source=/home/me/workdir,target=/root/workdir'

# Here we assume that user and password are stored in the profile such that it will query for a second factor. 
# The OTP response is piped using the base32-encoded secret key 
# Warning: This is a demo-examnple! Storing the key unencrypted is not recommended even thoug technically poossible...
oathtool --base32 --totp XA2SU4Q4NODT5BZBRM4DXXFJAWHPYZ4G | openconnect VPN_PROFILE
rm -f vpn.sh
