#How to use the Rsync Tool
you kan rsync the date width many server computer. please read the doc file.

##The rsync.bat run the want to have data PC.
```HTML
@echo off
echo.
echo 开始同步数据，Joo 请稍等...
echo.
cd C:\Program Files (x86)\cwRsync\bin
rsync -vzrtopg --port=873 --progress --delete Administrator@10.232.74.255::s3 /cygdrive/d/wwwroots  
            // d/wwwroots   为存数据位置d盘wwwroots文件夹
            //s3 为客户端上配置的config文件同步名称。
            //Administrator@10.232.74.255 为服务端的用户名和Ip地址
echo.
echo 数据同步完成，恭喜Joo!
echo.

```

##The rsyncd.conf run in the data PC

```HTML
use chroot = false
uid = 0
gid = 0
strict modes = false
hosts allow = *
max connections = 10
log file = rsyncd.log
pid file = rsyncd.pid
port = 873

# Module definitions
# Remember cygwin naming conventions : c:\work becomes /cygwin/c/work
#
[s2]
path = /cygdrive/d/wwwroot    //数据源，即要把这里的数据同步给其它服务器。    
read only = false
transfer logging = yes
lock file = rsyncd.lock
```