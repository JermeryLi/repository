1. nginx服务信号控制

   1. nginx中的master和worker进程
   2. nginx的工作方式
   3. 获取进程的pid
   4. 信号有哪些
   5. 如何通过信号控制控制启停

   ps -ef|grep nginx  

   logs/nginx.pid

   TERM/INT 立即关闭整个服务

   QUIT 优雅的关闭整个服务

   HUP 重读配置文件并使用服务对新配置项生效

   USR1 重新打开日志文件，可以用来日志分割

   USR2 平滑升级到最新版的nginx

   WINCH 所有子进程不在接收处理新连接，相当于给work进程发送QUIT指令

   

2. nginx命令行控制

   nginx/sbin

   ![image-20210725220648881](C:\Users\13034\AppData\Roaming\Typora\typora-user-images\image-20210725220648881.png)

   ./nginx -v

   ./nginx -V

   ./nginx -t 检测nginx.conf 有没有语法错误

   ./nginx -T 测试失败，功能相同。测试成功，会列出详细内容。

   ./nginx -q 输出错误信息。测试成功，输出空白。

   ./nginx -s  signal;  stop--TERM/INT、quit-QUIT、reopen-USR1、reload-HUP

   ./nginx -p prefix 指定prefix路径

   ./nginx -c 指定配置文件路径



nginx版本升级 不中断服务

1. 服务信号

   环境准备： 两个版本的安装包

   1. 备份

      

   2. 

2. 安装目录make命令