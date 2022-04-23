FROM ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive
COPY molokai.vim vimrc /usr/share/vim/vim82/colors/
RUN mv /usr/share/vim/vim82/colors/vimrc /etc/vim && echo "dash dash/sh boolean false" | debconf-set-selections && dpkg-reconfigure dash && bash -c 'yes | unminimize' && apt-get update -y && apt-get full-upgrade -y \
    && ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && apt-get install -y asciidoc && dpkg-reconfigure --frontend noninteractive tzdata \
    && apt-get install -y ack antlr3 asciidoc autoconf automake autopoint binutils bison build-essential \
    bzip2 ccache cmake cpio curl device-tree-compiler fastjar flex gawk gettext gcc-multilib g++-multilib \
    git gperf haveged help2man intltool libc6-dev-i386 libelf-dev libglib2.0-dev libgmp3-dev libltdl-dev \
    libmpc-dev libmpfr-dev libncurses5-dev libncursesw5-dev libreadline-dev libssl-dev libtool lrzsz \
    mkisofs msmtp nano ninja-build p7zip p7zip-full patch pkgconf python2.7 python3 python3-pip qemu-utils \
    rsync scons squashfs-tools subversion swig texinfo uglifyjs upx-ucl unzip vim wget xmlto xxd zlib1g-dev \
    && apt-get -y install android-libext4-utils-dev openssh-server \
    && adduser csjtl --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password \
    && echo "csjtl:1" | chpasswd \
    && apt-get install sudo \
    && echo "%sudo ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers \
    && echo "csjtl ALL=(ALL:ALL) ALL" >> /etc/sudoers

