# ftn-server
Fear the Night Dedicated Server Docker Image

Build to create a containerized version of the dedicated server for Fear the Night
https://store.steampowered.com/app/764920/Fear_the_Night/
 
Warning: The server does not contain native linux binaries.  Server package is built on Wine.
 
Build by hand
```
git clone https://github.com/antimodes201/ftn-server.git
docker build -t antimodes201/ftn-server:latest .
``` 
 
Docker Pull
```
docker pull antimodes201/ftn-server
```
 
Docker Run with defaults 
change the volume options to a directory on your node and maybe use a different name then the one in the example
 
```
docker run -it -p 7777-7778:7777-7778/udp -p 27015:27015/udp -p 27020:27020 -v /app/docker/temp-vol:/ftn \
-e INSTANCE_NAME="T3stN3t A Fancy Fear the Night Server in a Docker Container" \
--name ftn \
antimodes201/ftn-server:latest
```
 
Currently exposed environmental variables and their defaul values
- INSTANCE_NAME default
- GAME_PORT 7777
- GAME_PORT2 7778
- QUERY_PORT 27015
- RCON_PORT 27020
- ENV TZ America/New_York
