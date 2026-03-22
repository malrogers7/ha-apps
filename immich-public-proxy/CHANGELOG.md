# Changelog

## 1.15.5
Repository: alangrainger/immich-public-proxy · Tag: v1.15.5 · Commit: 6208f47 · Released by: alangrainger

- #198 #199 Fix breaking change with password protected links from Immich 1.6.x

## 1.15.4 (Upstream)

- #196 Fix issue where original image was incorrectly downloaded inside "Download all' zip file
- Add placeholder thumbnail in case of missing asset image
- Show spinner only on large galleries
- Lazy load off-screen images
- Improve gallery scroll
- Improve zip creation performance by fetching assets in parallel

## 1.15.3 (Upstream)

- #187 Fix issue with album description not wrapping correctly
- #188 Fix pinned node:lts-alpine version
- #186 Fix incorrect docker package version

Please clear proxy cache if necessary to ensure you're serving the latest /share/static/style.css

## 1.15.2 (Upstream)
- #148 Fix download of preview quality video when downloadOriginalPhoto is set to false
- #151 #97 Add option to show Immich album description (if present) in shared album. Thanks @otterstedt
  To show the album description, set "showGalleryDescription": true in Home Assistant Config

## 1.15.1-ha3
- Cleaned up build arguments to use `build.yaml` as a single source of truth.

## 1.15.1-ha2
- Switched base image to `ghcr.io/alangrainger/immich-public-proxy:1.15.1`.

## 1.15.1 (Upstream)
- Changes the way that the `og:image` fully-qualified URLs are generated.
- Introduces the `PUBLIC_BASE_URL` environment variable requirement for docker-compose.
- General performance improvements and bug fixes.

## 1.0.0
- Initial release of the Immich Public Proxy add-on for Home Assistant.
