#!/bin/sh
if [ ! -d /tmp/zenpack ] ; then
	mkdir /tmp/zenpack && chmod 777 /tmp/zenpack
else 
	chmod 777 /tmp/zenpack
fi
cp $1 /tmp/zenpack
chmod 777 /tmp/zenpack/*.egg
serviced service snapshot Zenoss.core
cd /tmp/zenpack
serviced service run zope zenpack-manager install  $1

