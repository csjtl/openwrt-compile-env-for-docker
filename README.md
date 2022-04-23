# openwrt-compiler-env-for-docker

Docker 使用的 Ubuntu 22.04 的编译 OpenWrt 的编译环境容器。 拉取命令 docker pull csjtl/openwrt-compile-env-for-docker:v1.01 。最终镜像为最新的 Ubuntu 22.04 的系统，完整的 OpenWrt 编译依赖环境。SSH 自启动，启动容器即可链接。添加一个名为 csjtl 的用户，赋予sudo权限，用于非root编译 openwrt 。Vim 使用了自定义主题 molokai.vim 和 vimrc 配置文件。

https://tl8517.com/openwrt-docker-ubuntu/
