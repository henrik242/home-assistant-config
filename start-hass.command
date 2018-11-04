#!/usr/bin/env bash

PIDFILE=$HOME/.homeassistant/homeassistant.pid

. $(dirname $0)/stop-hass.sh

#export REQUESTS_CA_BUNDLE=$HOME/.homeassistant/ca_bundle.pem
#export SSL_CERT_FILE=$HOME/.homeassistant/ca_bundle.pem

hass --daemon --pid-file $PIDFILE

