#!/bin/bash

# Start script for Fear the Night Dedicated Server Docker Image

/steamcmd/steamcmd.sh +login anonymous +force_install_dir /ftn +app_update 764940 +quit
cd /ftn/Moonlight/Binaries/Win64
xvfb-run wine MoonlightServer.exe Pittsburgh_Overworld?SessionName="${INSTANCE_NAME}"?listen?Port=${GAME_PORT}?QueryPort=${QUERY_PORT}
