# Changelog

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
