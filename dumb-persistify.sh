#!/bin/bash
# Copyright 2014 Cumulus Networks, Inc. All rights reserved.
# Author: Sean Cavanaugh, sean@cumulusnetworks.com
# https://github.com/CumulusNetworks/customer-scripts/blob/master/dumb-persistify.sh
#
#   This script is based off the KB article: https://support.cumulusnetworks.com/hc/en-us/articles/201787826-What-Files-should-I-Back-Up-when-Updating-Cumulus-Linux-via-Image-Install-
cp --parents /etc/shadow /mnt/persist/
cp --parents /etc/passwd /mnt/persist/
cp -a --parents /etc/ssh/ /mnt/persist/
if [ -f /etc/quagga/Quagga.conf ]; then cp --parents /etc/quagga/Quagga.conf /mnt/persist; fi
cp --parents /etc/quagga/daemons /mnt/persist
if [ -f /etc/ldap.conf ]; then cp --parents /etc/ldap.conf /mnt/persist; fi
cp -r --parents /etc/network/ /mnt/persist/
cp --parents /etc/motd /mnt/persist/
cp --parents /etc/cumulus/ports.conf /mnt/persist
cp --parents /etc/resolv.conf /mnt/persist
cp --parents /etc/hostname /mnt/persist
