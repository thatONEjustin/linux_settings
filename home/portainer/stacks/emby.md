---
version: "2.3"
services:
  emby:
    image: emby/embyserver:latest
    container_name: embyserver
    network_mode: host # Enable DLNA and Wake-on-Lan
    runtime: nvidia # Expose NVIDIA GPUs
    environment:
      - UID=0 # The UID to run emby as (default: 2)
      - GID=0 # The GID to run emby as (default 2)
      - GIDLIST=44,107 # A comma-separated list of additional GIDs to run emby as (default: 2)
    volumes:
      - /portainer/emby/config:/config # Configuration directory
      - /media/video/tv:/tv # TV directory
      - /media/video/movies:/movies # Movies directory
      - /media/video/standup:/standup # standup directory
      - /media/video/porn:/porn
    ports:
      - 8096:8096 # HTTP port
      - 8920:8920 # HTTPS port
    devices:
      - /dev/dri:/dev/dri # VAAPI/NVDEC/NVENC render nodes
    restart: unless-stopped