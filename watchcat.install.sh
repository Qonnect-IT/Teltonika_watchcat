#!/bin/sh

echo "Moving current files to filename_factory"
[ -f /etc/init.d/watchcat ] && mv /etc/init.d/watchcat /etc/init.d/watchcat_factory
[ -f /usr/bin/watchcat.sh ] && mv /usr/lib/watchcat.sh /usr/bin/watchcat.sh_factory
[ -f /etc/config/watchcat ] && mv /etc/config/watchcat /etc/config/watchcat_factory

echo "Downloading new files and setting execute bit"
[ ! -f /etc/init.d/watchcat ] && curl https://raw.githubusercontent.com/Qonnect-IT/Teltonika_watchcat/master/watchcat.init --output /etc/init.d/watchcat && chmod +x /etc/init.d/watchcat
[ ! -f /usr/bin/watchcat.sh ] && curl https://raw.githubusercontent.com/Qonnect-IT/Teltonika_watchcat/master/watchcat.sh --output /usr/bin/watchcat.sh && chmod +x /usr/bin/watchcat.sh
[ ! -f /etc/config/watchcat ] && curl https://raw.githubusercontent.com/Qonnect-IT/Teltonika_watchcat/master/watchcat.config --output /etc/config/watchcat

echo "Setting Watchcat to start on router boot"
/etc/init.d/watchcat enable

echo "Starting Watchcat"
/etc/init.d/watchcat start
