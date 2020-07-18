FROM ubuntu:18.04



RUN apt-get update && \ 
    apt-get install -y wget unzip rsync && \
    wget https://github.com/gohugoio/hugo/releases/download/v0.74.2/hugo_0.74.2_Linux-64bit.deb && \
    dpkg -i hugo_0.74.2_Linux-64bit.deb && \
    wget http://devtools.qiniu.com/qshell-linux-x86-v2.4.2.zip && \
    unzip qshell-linux-x86-v2.4.2.zip && \
    mv qshell-linux-x86-v2.4.2 /usr/local/bin/qshell

COPY "entrypoint.sh" "/entrypoint.sh"
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]