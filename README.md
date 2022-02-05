# SinusBot Docker image with yt-dlp

SinusBot is typically installed alongside youtube-dl, a tool used to download content from Youtube and other platforms. The youtube-dl project sees little development, and download speeds are increasingly slowing down (often throttled at 70KiB/s). This container replaces youtube-dl with yt-dlp, an indirect fork of youtube-dl, which aims to add new features and patches and offers greatly improved download speeds.

## Usage

In `docker-compose.yml`:

```
services:
  sinusbot:
    build: https://raw.githubusercontent.com/martindines/sinusbot-docker/main/Dockerfile
    restart: always
    ports:
      - 8087:8087
```

## References

- [SinusBot](https://www.sinusbot.com/)
- [SinusBot Docker Image](https://github.com/SinusBot/docker)
- [yt-dlp](https://github.com/yt-dlp/yt-dlp)
- [youtube-dl](https://github.com/ytdl-org/youtube-dl)
