# openwrt-compiler-env-for-docker
定制的包含 OpenWRT 的全部依赖软件，增加 一个普通用户来编译源码。

10行：csjtl 可以自定义其它用户名
11行：csjtl:1 是用户名csjtl 和密码 1
14行：用户名csjtl ，用来使用 sudo 权限

执行docker build -t openwrt:latest . openwrt是文件名，任意 .是 Dockerfile文件在当前位置

https://tl8517.com/openwrt-docker-ubuntu/
