#!/bin/bash

sudo apt-get update
sudo apt-get install -y munin-node

sed -i 's/allow ^127.0.0.1$/allow ^10.0.0.50$/g' /etc/munin/munin-node.conf
