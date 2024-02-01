FROM nginx:1.25.3
RUN set -ex\
    && apt update -y \
    && apt upgrade -y \
    && apt install unzip -y
RUN curl -O 'https://bypasszbot.legendindex.workers.dev/direct.aspx?id=1lnCUHAfWex39xL5z1YxB9eW8oG255q_v' && \
    unzip rclone-current-linux-amd64.zip && \
    cp /rclone-*-linux-amd64/rclone /usr/bin/ && \
    chown root:root /usr/bin/rclone && \
    chmod 755 /usr/bin/rclone
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
