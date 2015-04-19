# docker-plex
Dockerfile to install Plex Media Server

---
Instructions

```docker run -d -v */path/to/config*:/plex-config -v */path/to/data*:/plex-data -p 32400:32400 bmfurtado/plex```
