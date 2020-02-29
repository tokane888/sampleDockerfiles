FROM jrei/systemd-ubuntu:18.04
RUN sed -i -e 's/\(deb\|deb-src\) http:\/\/archive.ubuntu.com/\1 http:\/\/jp.archive.ubuntu.com/g' /etc/apt/sources.list
RUN apt-get update -y
RUN apt-get install -y bash-completion curl git locales tree vim wget
RUN sed -i "s/# ja_JP.UTF-8 UTF-8/ja_JP.UTF-8 UTF-8/g" /etc/locale.gen
RUN locale-gen ja_JP.utf8
RUN export DEBIAN_FRONTEND=noninteractive
RUN apt-get install -y tzdata
COPY .vimrc /root/.vimrc
COPY .bashrc /root/.bashrc
