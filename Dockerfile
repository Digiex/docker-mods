## Buildstage ##
FROM ghcr.io/linuxserver/baseimage-alpine:3.12 as buildstage

RUN \
 echo "**** install packages ****" && \
 apk add --no-cache \
	curl && \
 echo "**** grab mp4.sh ****" && \
 mkdir -p /root-layer && \
 curl -o \
	/root-layer/mp4.sh -L \
	"https://raw.githubusercontent.com/Digiex/M4V-Converter/master/mp4.sh"

# copy local files
COPY root/ /root-layer/

## Single layer deployed image ##
FROM scratch

LABEL maintainer="xzKinGzxBuRnzx"

# Add files from buildstage
COPY --from=buildstage /root-layer/ /
