#!/bin/sh
set -e

echo "Starting Immich Public Proxy Add-on..."

# Read core options
export IMMICH_URL=$(jq --raw-output '.immich_url' /data/options.json)
export PUBLIC_BASE_URL=$(jq --raw-output '.public_url' /data/options.json)

# Read the new boolean/int options
export SINGLE_IMAGE_GALLERY=$(jq --raw-output '.single_image_gallery' /data/options.json)
export DOWNLOAD_ORIGINAL_PHOTO=$(jq --raw-output '.download_original' /data/options.json)
export DOWNLOADED_FILENAME=$(jq --raw-output '.downloaded_filename' /data/options.json)
export SHOW_GALLERY_TITLE=$(jq --raw-output '.show_gallery_title' /data/options.json)
export ALLOW_DOWNLOAD_ALL=$(jq --raw-output '.allow_download_all' /data/options.json)
export SHOW_HOME_PAGE=$(jq --raw-output '.show_home_page' /data/options.json)

echo "Starting Proxy with custom settings..."
exec npm start
