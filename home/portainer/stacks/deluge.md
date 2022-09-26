---
version: "2.1"
services:
  deluge:
    image: lscr.io/linuxserver/deluge:latest
    container_name: deluge
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=US/Chicago
      - DELUGE_LOGLEVEL=error #optional
    volumes:
      - /portainer/deluge/config:/config
      - /portainer/downloads:/downloads
    ports:
      - 8112:8112
      - 6881:6881
      - 6881:6881/udp
    restart: unless-stopped