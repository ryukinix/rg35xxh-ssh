#!/bin/sh
echo $0 $*
progdir=`dirname "$0"`

apt-get install -y language-pack-en
update-locale "LANG=en_US.UTF-8"
locale-gen --purge "en_US.UTF-8"
dpkg-reconfigure --frontend noninteractive locales
update-locale LANG=en_US.UTF-8 LANGUAGE= LC_MESSAGES= LC_COLLATE= LC_CTYPE=
