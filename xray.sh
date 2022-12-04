#!/bin/sh
if [ ! -f UUID ]; then
  UUID="723927ee-2e2e-47d7-b1fd-bc1c21aeff9e"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

