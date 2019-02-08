#!/usr/bin/env bash

PIDFILE=$HOME/.homeassistant/homeassistant.pid

if [[ ! -f $PIDFILE ]]; then
  return
fi

PID=$(cat $PIDFILE)

if [[ -z "$PID" ]]; then
  return
fi

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

