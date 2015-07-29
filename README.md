#How to use the Rsync Tool | 如何使用数据同步工具
You can use Rsync to synchronize data between servers. The highest speed can reach 30M/s, really very magical! Please check the doc document in the warehouse in detail. | 你可以使用rsync进行服务器间的数据同步。最高速度可以达到30M/s，真的很神奇！详细的操作步骤请查看仓库中的doc文档。

####Rsync.bat runs on the server, the backup server.  | rsync.bat 运行在获取数据的服务器上，即备份服务器。
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

####Rsyncd.conf is the configuration file in the data source server, please see the following code in detail. | rsyncd.conf 是在数据源服务器上的配置文件，详细配置请看下面代码。

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
