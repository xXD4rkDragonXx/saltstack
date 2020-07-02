#!/bin/bash

sudo apt-get install munin-node

make
make install-common-prime install-node-prime install-plugins-prime
