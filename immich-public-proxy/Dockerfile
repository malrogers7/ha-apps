# 1. Use the upstream image as the base
ARG BUILD_FROM
FROM $BUILD_FROM

# 2. Install 'jq'
# We need this tool to parse the 'options.json' file that Home Assistant creates
RUN apk add --no-cache jq

# 3. Copy our startup script
COPY run.sh /run.sh
RUN chmod a+x /run.sh

# 4. Set the entrypoint to our script
CMD [ "/run.sh" ]
