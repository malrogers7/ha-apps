#!/bin/sh
set -e

echo "Starting Immich Public Proxy Add-on..."

# 1. Core URLs
export IMMICH_URL=$(jq --raw-output '.immich_url' /data/options.json)
export PUBLIC_BASE_URL=$(jq --raw-output '.public_url' /data/options.json)

# 2. Map String Lists to Numbers
# Map Filename Format
case "$(jq --raw-output '.downloaded_filename' /data/options.json)" in
  "original_name") DF_VAL=0 ;;
  "immich_id")     DF_VAL=1 ;;
  "short_id")      DF_VAL=2 ;;
  *)               DF_VAL=0 ;;
esac

# Map Download All settings
case "$(jq --raw-output '.allow_download_all' /data/options.json)" in
  "disabled")  AD_VAL=0 ;;
  "per_share") AD_VAL=1 ;;
  "always")    AD_VAL=2 ;;
  *)           AD_VAL=1 ;;
esac

# 3. Construct the JSON CONFIG
# We pull the remaining booleans directly into jq arguments
export CONFIG=$(jq -n \
  --argjson sg "$(jq '.single_image_gallery' /data/options.json)" \
  --argjson do "$(jq '.download_original' /data/options.json)" \
  --argjson df "$DF_VAL" \
  --argjson gt "$(jq '.show_gallery_title' /data/options.json)" \
  --argjson da "$AD_VAL" \
  --argjson hp "$(jq '.show_home_page' /data/options.json)" \
  --argjson desc "$(jq '.show_image_description' /data/options.json)" \
  '{
    ipp: {
      singleImageGallery: $sg,
      downloadOriginalPhoto: $do,
      downloadedFilename: $df,
      showGalleryTitle: $gt,
      allowDownloadAll: $da,
      showHomePage: $hp,
      showMetadata: {
        title: $gt,
        description: $desc
      }
    }
  }')

echo "Configuring environment..."

# 4. Start the application
exec npm start
