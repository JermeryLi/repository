#http块

##MIME-Type  
浏览器可以显示的内容有html、xml、GIF等资源，浏览器为了区分这些资源，需要使用MIME-Type。  
~~~nginx
include mine.type
default_type application/octet-steam
~~~

##default_type
设置nginx相应前端请求默认的MIME类型。

|语法|default_type mime-type|
|:---:|:---:|
|默认值|default_type text/plain|
|位置|http、server、location|

get_text  text/html  text/plain
get_json  application/json


##自定义服务日志
access.log  error.log
1. access.log
   access.log logs/access.log  
   
   打印的内容是
2. log_format  设置日志内容格式
    只能在http块中配置