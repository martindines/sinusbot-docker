FROM sinusbot/docker

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y --no-install-recommends install python3

RUN curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp && \
    chmod a+rx /usr/local/bin/yt-dlp

# config.ini does not exist at this stage
#RUN sed -i -e 's/YoutubeDLPath = "\/usr\/local\/bin\/youtube-dl"/YoutubeDLPath = "\/usr\/local\/bin\/yt-dlp"/' /opt/sinusbot/config.ini

# Instead create a symlink to avoid needing to update config.ini
RUN rm /usr/local/bin/youtube-dl && ln -s /usr/local/bin/yt-dlp /usr/local/bin/youtube-dl

