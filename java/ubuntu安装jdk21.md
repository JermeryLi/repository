# ubuntu安装jdk21

* ubuntu 22.04.4
* jdk 21


~~~shell
#
cd /java
# 安装wget
sudo apt update
sudo apt install wget
# 下载jdk21解压包
sudo wget https://download.oracle.com/java/21/latest/jdk-21_linux-x64_bin.tar.gz
# 解压
sudo tar -xvzf jdk-21_linux-x64_bin.tar.gz

# 配置环境变量
nano ~/.bashrc 
export JAVA_HOME=/java/jdk-21.0.6
export PATH=$JAVA_HOME/bin:$PATH

source ~/.bashrc
# 验证
java -version

#可选 设置默认jdk版本
sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk-21.0.2/bin/java 100
sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/jdk-21.0.2/bin/javac 100

sudo update-alternatives --config java

~~~