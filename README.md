# Guide for deploying Java Web Server
## Generate Jar for the project
there is already a amin-1.0-SNAPSHOT.jar under /target .
Put Jar at the right place.

## Create shell file
1. create start.sh 
2. change the content:  

`#!/bin/bash
nohup java -jar admin-1.0-SNAPSHOT.jar > nohup.out 2>&1 &`
3. start server
`nohup sh start.sh`

## Monitor the process
Server will linsten port 8855 by default.

`netstat -anp|grep 8855`

check log file with 

`cat nohup.out`



# Java Web Server 部署流程
1.项目打jar包，默认已经存在admin下的target目录：amin-1.0-SNAPSHOT.jar

2.登陆22服务器

3.将jar包存放在一个目录，例如  /root/ch/black

4.写一个shell脚本命名为start.sh 存放在步骤3的目录，方便日后再次部署
  内容如下：

===============分割线 start==========
  #!/bin/bash
nohup java -jar admin-1.0-SNAPSHOT.jar > nohup.out 2>&1 &

===============分割线 over==========

5./root/ch/black目录下输入nohup sh start.sh，程序一直在后台运行

6.此时目录下自动生成nohup.out文件，cat查看该文件

7.本程序占用端口8855，可以用命令 : netstat -anp|grep 8855监听

8.over

预设账号

|Name|Passwrod|
| --- | --- |
|teacher1|admin |  
|teacher2|admin |  
|teacher3|admin |  
