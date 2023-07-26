ARG ARCH=amd64
FROM bayrell/ubuntu_code_server:4.7.1-cuda

ARG APT_MIRROR

RUN cd ~; \
	export DEBIAN_FRONTEND='noninteractive'; \
	apt-get update; \
	apt-get install -y --no-install-recommends linux-tools-common g++ autoconf automake libtool pkg-config libpng-dev libjpeg8-dev libtiff5-dev zlib1g-dev libwebpdemux2 libwebp-dev libopenjp2-7-dev libgif-dev libarchive-dev libcurl4-openssl-dev libicu-dev libpango1.0-dev libcairo2-dev; \
	apt-get clean all; \
	echo 'Ok'

RUN cd ~; \
	export DEBIAN_FRONTEND='noninteractive'; \
	apt-get update; \
	apt-get install -y --no-install-recommends poppler-utils mysql-client ffmpeg; \
	apt-get clean all; \
	echo 'Ok'
