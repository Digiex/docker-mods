# MP4 - Docker mod for nzbget

This mod adds digiex/mp4 script + ffmpeg to nzbget, to be installed/updated during container start.

In nzbget docker arguments, set an environment variable `DOCKER_MODS=linuxserver/mods:nzbget-mp4`

If adding multiple mods, enter them in an array separated by `|`, such as `DOCKER_MODS=linuxserver/mods:nzbget-mp4|linuxserver/mods:nzbget-mod2`
