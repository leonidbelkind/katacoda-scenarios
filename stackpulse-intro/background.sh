#!/bin/bash

curl -O https://storage.googleapis.com/stackpulse-public/release/latest/linux/amd64/stackpulse
chmod +x ./stackpulse

echo "done" >> /opt/.backgroundfinished
