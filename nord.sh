#!/bin/bash

if [ "$2" ]; then
    server=$2
else
    server="P2P"
fi

if [ "$1" = "up" ]; then
    nordvpn set killswitch enabled
    nordvpn connect $server
fi

if [ "$1" = "kill" ]; then
    nordvpn set killswitch disabled
    nordvpn disconnect
fi
