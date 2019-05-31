#!/bin/bash

AVAIL=$(df --output=avail -h "$PWD" | sed '1d;s/[^0-9]//g')
USED=$(df --output=used -h "$PWD" | sed '1d;s/[^0-9]//g')
SIZE=$(df --output=size -h "$PWD" | sed '1d;s/[^0-9]//g')
IPV6=$(/sbin/ip -6 addr | grep inet6 | awk -F '[ \t]+|/' '{print $3}' | grep -v ^::1 | grep -v ^fe80)
IPV4=$(ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1')

echo ""
echo Welcome to $(hostname)!
echo ""
echo Current IP Adresses: $IPV6 $IPV4
echo Disk space: $USED/$SIZE GB used. $AVAIL GB free.
echo ""

echo "$(tput setaf 2)
   .~~.   .~~.
  '. \ ' ' / .'$(tput setaf 1)
   .~ .~~~..~.
  : .~.'~'.~. :
 ~ (   ) (   ) ~
( : '~'.~.'~' : )
 ~ .~ (   ) ~. ~
  (  : '~' :  ) $(tput sgr0)Raspberry Pi of Yanick Nedderhoff$(tput setaf 1)
   '~ .~~~. ~'
       '~'
$(tput sgr0)"
