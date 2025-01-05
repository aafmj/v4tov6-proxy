#!/bin/bash

set -xe

echo "================= start at: `date` ================"

ifconfig sit0 up

ifconfig sit0 inet6 tunnel ::(ipv4-from-tunnelbroker)

ifconfig sit1 up

ifconfig sit1 inet6 add (ip-v6-from-tunnelbroker)/64

route -A inet6 add ::/0 dev sit1

echo "================= done at: `date` ================="
