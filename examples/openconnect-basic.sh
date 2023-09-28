#!/usr/bin/env bash
curl https://raw.githubusercontent.com/Schm1tz1/docker-vpn/master/vpn.sh --output vpn.sh
source vpn.sh

openconnect VPN_PROFILE
rm -f vpn.sh
