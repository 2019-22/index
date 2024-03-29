FROM nginx:latest
RUN set -ex\
    && apt update -y \
    && apt upgrade -y \
    && apt install unzip -y
RUN curl -O 'https://raw.githubusercontent.com/2019-22/RClone-Index/main/rclone-v1.65.2-linux-amd64.zip' && \
    unzip rclone-v1.65.2-linux-amd64.zip && \
    cp /rclone-v1.65.2-linux-amd64/rclone /usr/bin/ && \
    cp /rclone-v1.65.2-linux-amd64/rclone.conf /usr/bin/ && \
    chown root:root /usr/bin/rclone && \
    chmod 755 /usr/bin/rclone
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
