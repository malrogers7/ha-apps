# Immich Public Proxy

Share your Immich photos and albums in a safe way without exposing your Immich instance to the public.

Setup takes less than a minute, and you never need to touch it again as all of your sharing stays managed within Immich.

<p align="center" width="100%">
<img src="icon.png" width="200" height="200">
</p>

## About 

[Immich](https://github.com/immich-app/immich) is a wonderful bit of software, but since it holds all your private photos it's 
best to keep it fully locked down. This presents a problem when you want to share a photo or a gallery with someone.

**Immich Public Proxy** provides a barrier of security between the public and Immich, and _only_ allows through requests
which you have publicly shared.

It is stateless and does not know anything about your Immich instance. It does not require an API key which reduces the attack 
surface even further. The only things that the proxy can access are photos that you have made publicly available in Immich. 

This pulls the [Immich Public Proxy](https://github.com/alangrainger/immich-public-proxy) by [Alan Grainger](https://github.com/alangrainger)
