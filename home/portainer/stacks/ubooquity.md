---
version: "2.1"
services:
  ubooquity:
    image: lscr.io/linuxserver/ubooquity:latest
    container_name: ubooquity
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=America/Chicago
      - MAXMEM=1024
    volumes:
      - /portainer/ubooquity/config:/config
      - /media/books:/books
      - /media/comics:/comics
      - /media/images:/images
    ports:
      - 2202:2202
      - 2203:2203
    restart: unless-stopped