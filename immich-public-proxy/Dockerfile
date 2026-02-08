# 1. Define the build arguments provided by Home Assistant
ARG BUILD_FROM=ghcr.io/alangrainger/immich-public-proxy:1.15.1
ARG BUILD_ARCH=amd64
ARG BUILD_DATE
ARG BUILD_DESCRIPTION
ARG BUILD_NAME
ARG BUILD_REF
ARG BUILD_REPOSITORY
ARG BUILD_VERSION

# 2. Start from the base image
FROM ${BUILD_FROM}

# 3. Switch to root to perform installs and permission changes
USER root

# 4. Install dependencies
RUN apk add --no-cache jq

# 5. Copy your files
COPY rootfs/ /

# 6. Set permissions
RUN chmod a+x /run.sh

# 7. Apply the Labels
LABEL \
    io.hass.name="${BUILD_NAME}" \
    io.hass.description="${BUILD_DESCRIPTION}" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version="${BUILD_VERSION}" \
    maintainer="Malcolm Rogers <malcolmrgs@gmail.com>" \
    org.opencontainers.image.title="${BUILD_NAME}" \
    org.opencontainers.image.description="${BUILD_DESCRIPTION}" \
    org.opencontainers.image.vendor="Mal HA Add-ons" \
    org.opencontainers.image.authors="Malcolm Rogers <malcolmrgs@gmail.com>" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.url="https://github.com/malrogers7" \
    org.opencontainers.image.source="https://github.com/${BUILD_REPOSITORY}" \
    org.opencontainers.image.documentation="https://github.com/${BUILD_REPOSITORY}/blob/main/README.md" \
    org.opencontainers.image.created=${BUILD_DATE} \
    org.opencontainers.image.revision=${BUILD_REF} \
    org.opencontainers.image.version=${BUILD_VERSION}

# 8. Start the script
ENTRYPOINT [ "/run.sh" ]
