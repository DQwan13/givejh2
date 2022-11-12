#!/bin/sh
if [ ! -f UUID ]; then
  UUID="7fc25fc3-dcec-4dfc-9e6b-db2a01f3d483"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

