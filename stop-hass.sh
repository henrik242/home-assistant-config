#!/usr/bin/env bash

PIDFILE=$HOME/.homeassistant/homeassistant.pid
PID=$(cat $PIDFILE)

while true; do
  ps ax |grep "^ *$PID " >/dev/null

  if [[ $? -eq 0 ]]; then
    echo Killing hass
    kill $PID
    sleep 1
  else
    break
  fi
done

