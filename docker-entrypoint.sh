#!/bin/sh

# launcher docker daemon
nohup dockerd > /dev/null &

# build the emscripten image for future use
docker build -t pgetinker/emscripten /usr/src/app/emscripten

# launch server
cd /usr/src/app; npm run start
