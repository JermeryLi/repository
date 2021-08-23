#全局块
##user指令
./configure --help  
(1)user:用于配置运行Nginx服务器的worker进程的用户和用户组

| 语法 |user user[group]|
|:---:|:---:|
|默认值|nobody|
|位置|全局块|

该属性也可以在编译的时候指定，语法如下:  
./configure --user=user --group=group  
优先级低于nginx.conf中的配置 。  
修改完nginx.conf后最好进行，语法错误检测: ./nginx -t  
1. nginx.conf 配置   
    ```nginx
    user www
    ```
2. 创建用户
    ```ssh
   useradd www 
   ```
使用user指令可以指定启动运行工作进程的用户及用户组，这样对于系统的权限访问控制更加精细，更加安全。  


##worker_process指令      
master_process用来指定是否开启工作进程  

|语法|master_process on、 off|
|:---:|:---:|
|默认值|on|
|位置|全局块|

worker_process: 用于配置nginx生成工作进程的数量，这个是nginx服务器实现并发处理的关键所在。  
理论上来说worker_process的值越大，可以支持的并发处理量也就越大。  
但是实际上找个值得设定是需要收到服务器自身的限制。  
建议将该值和服务器CPU的内核数设定为一致。  

|语法| worker_process num auto|  
|:---:|:---:|  
|默认值 | 1 |
|位置|全局块|


##其他指令
daemon:设定Nginx是否以守护进程的方式启动  
守护进程是linux后台执行的一种服务进程，特点是独立于控制终端，不会随着终端的关闭而停止。

|语法|daemon on、off|  
|:---:|:---:|  
|默认值|on|  
|位置|全局块|  

pid: 配置pid的存储路径

|语法|pid|
|:---:|:---:|
|默认值|/usr/local/nginx/logs/nginx.pid|
|位置|全局块|

error_log: 日志级别有debug、info、notice、warn、error、crit、alert、emerg，不要设置成info以下等级。因为会带来大量的IO消耗，影响nginx的性能，  
include: 引入其他配置文件，使nginx的配置更加灵活。