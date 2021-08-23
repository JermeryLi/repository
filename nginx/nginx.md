nginx

高性能的http和反向代理的web服务器，也是POP3/SMTP/IMAP代理服务器。开源。

1. web服务器

​    网页服务器，web server, 为用户提供网上信息浏览服务。

2. http

   超文本传输协议

3. POP3/SMTP/IMAP

   1. POP3 邮局协议的第三个版本

   2. SMTP 简单邮件传输协议

   3. IMAP 交互式邮件传输协议

      nginx也可以作为电子邮件代理服务器



1. 正向代理

   翻墙

2. 反向代理

   反向代理服务的是服务端

优点

1. 速度快、并发高

   多进程和I/O多路复用

2. 配置简单，扩展性强

3. 高可靠性

   多进程模式运行，其中一个master主进程和N个worker进程

4. 热部署

5. 成本低、BSD许可证



1. 基本http服务
   1. 
2. 高级http服务



常用功能模块

1. 静态资源部署

2. Rewrite地址重写

   正则表达式

3. 反向代理

4. 负载均衡

   轮询、加权轮询、ip_hash、url_hash、fair

5. web缓存

6. 环境部署

   高可用的环境

7. 用户认证



nginx的核心组成

1. nginx二进制可执行文件
2. nginx.conf 配置文件
3. error.log 错误日志
4. access.log访问日志



nginx.org

