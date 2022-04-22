FROM ubuntu:latest
RUN echo "dash dash/sh boolean false" | debconf-set-selections
RUN DEBIAN_FRONTEND=noninteractive dpkg-reconfigure dash
RUN DEBIAN_FRONTEND=noninteractive bash -c 'yes | unminimize' && apt-get update && ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && apt-get -y install asciidoc && dpkg-reconfigure --frontend noninteractive tzdata \
    && apt-get -y install antlr3 asciidoc autoconf automake autopoint binutils \
    build-essential bzip2 curl device-tree-compiler flex g++-multilib gawk gcc-multilib \
    gettext git git-core gperf lib32gcc1 libc6-dev-i386 libelf-dev libglib2.0-dev libncurses5-dev \
    libssl-dev libtool libz-dev msmtp net-tools p7zip p7zip-full patch python2.7 python3 qemu-utils \
    rsync subversion swig texinfo uglifyjs unzip upx wget xmlto zlib1g-dev
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install android-sdk-ext4-utils iputils-ping openssh-server
RUN adduser csjtl --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password \
    && echo "csjtl:1" | chpasswd \
    && apt-get install sudo \
    && echo "%sudo ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers \
    && echo "csjtl ALL=(ALL:ALL) ALL" >> /etc/sudoers \
COPY molokai.vim /usr/share/vim/*/colors && vimrc /etc/vim

