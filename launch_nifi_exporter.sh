#!/usr/bin/env bash

# generate nifi_exporter config
cat <<EOF | tee config.yaml
exporter:
  listenAddress: 0.0.0.0:8000
nodes:
  - url: $NIFI_ENDPOINT
    username: $NIFI_USERNAME
    password: $NIFI_PASSWORD
EOF

# launch the nifi_exporter with the config file
./nifi_exporter config.yaml