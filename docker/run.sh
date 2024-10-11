#!/bin/sh

echo Starting phev2mqtt

/opt/phev2mqtt \
        client \
        mqtt \
        --mqtt_server "tcp://${MQTT_SERVER}/" \
        --mqtt_username "${MQTT_USER}" \
        --mqtt_password "${MQTT_PASS}"
