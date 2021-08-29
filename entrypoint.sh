#/bin/sh

set -e

FILE="/etc/keepalived/$KEEPALIVE_STATE.conf"

if [ ! -f $FILE ]; then
    echo "Configuration file not found"
    echo "Expected to find file at $FILE"
    exit 1
fi

keepalived -n -G -l -f $FILE
