#!/bin/sh
set -e

echo "Starting Immich Public Proxy Add-on..."

# 1. Read core options
export IMMICH_URL=$(jq --raw-output '.immich_url' /data/options.json)
export PUBLIC_BASE_URL=$(jq --raw-output '.public_url' /data/options.json)

# 2. Map Boolean and List options
# Using jq directly to ensure we get a clean string
export SINGLE_IMAGE_GALLERY=$(jq --raw-output '.single_image_gallery // "false"' /data/options.json)
export DOWNLOAD_ORIGINAL_PHOTO=$(jq --raw-output '.download_original // "true"' /data/options.json)
export DOWNLOADED_FILENAME=$(jq --raw-output '.downloaded_filename // 0' /data/options.json)
export SHOW_GALLERY_TITLE=$(jq --raw-output '.show_gallery_title // "true"' /data/options.json)
export ALLOW_DOWNLOAD_ALL=$(jq --raw-output '.allow_download_all // 1' /data/options.json)
export SHOW_HOME_PAGE=$(jq --raw-output '.show_home_page // "true"' /data/options.json)

# 3. Log the settings
echo "Configuring environment..."
echo " - Target: $IMMICH_URL"
echo " - Show Home Page: $SHOW_HOME_PAGE"

# 4. Start the application
exec npm start
