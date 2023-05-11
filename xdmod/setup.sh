#!/usr/bin/env bash

echo "Import configuration files"
if [ -f "/xdmod/conf/xdmod_etc.tar.gz" ]; then
  tar -xvzf /xdmod/conf/xdmod_etc.tar.gz --strip-components 2 -C /etc/xdmod
  chown -R root:apache /etc/xdmod
fi

echo "Setting Default Timeframe"
sed -i 's/defaultCannedDateIndex\: 5,/defaultCannedDateIndex\: 8,/' /usr/share/xdmod/html/gui/js/DurationToolbar.js

echo "Open XDMoD initialized"
