FROM nginx::1.19.6
RUN set -ex\
    && apt update -y \
    && apt upgrade -y \
    && apt install unzip curl wget git expect -y
RUN curl -O 'https://github.com/2019-22/RClone-Index/raw/main/rclone-current-linux-amd64.zip' && \
    unzip rclone-current-linux-amd64.zip && \
    cp /rclone-*-linux-amd64/rclone /usr/bin/ && \
    chown root:root /usr/bin/rclone && \
    chmod 755 /usr/bin/rclone
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
