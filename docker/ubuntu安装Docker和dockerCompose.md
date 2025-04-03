# Ubuntu安装Docker和dockerCompose

* ubuntu 22.04.4
* docker version 28.0.0
* [ubuntu安装docker官方文档](https://docs.docker.com/engine/install/ubuntu/)
* [阿里云镜像加速](https://cr.console.aliyun.com/cn-hangzhou/instances/mirror)]
* [ubuntu安装docker b站视频教程](https://www.bilibili.com/video/BV183B1Y2EGk/)


~~~shell
# 安装docker基础依赖 
# apt-transport-https：支持 HTTPS 源。
# ca-certificates：处理证书。
# curl：用来下载东西。
# software-properties-common：方便添加软件源。
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

### Uninstall old versions
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done

sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
# 安装docker最新版本
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

sudo docekr version

# 配置docker镜像加速
sudo nano /etc/docker/daemon.json
{
  "registry-mirrors": ["https://9uo29bge.mirror.aliyuncs.com",
  "https://do.nark.eu.org",
  "https://dc.j8.work",
  "https://docker.m.daocloud.io",
  "https://dockerproxy.com",
  "https://docker.mirrors.ustc.edu.cn",
  "https://docker.nju.edu.cn"]
}

sudo systemctl daemon-reload
sudo systemctl restart docker
# 设置docker开机启动
sudo systemctl enable docker
sudo systemctl enable containerd

~~~

~~~shell
# 此版本docker 28.0.0自带docker-compose 2.33.0
sudo apt install docker-compose
~~~

~~~shell
# 将用户加入docker组
whoami
getent group docker
sudo usermod -aG docker $USER
newgrp docker
~~~
