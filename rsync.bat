@echo off
echo.
echo 开始同步数据，Joo-studio.com 请稍等...
echo.
cd C:\Program Files (x86)\cwRsync\bin
rsync -vzrtopg --port=873 --progress --delete Administrator@10.232.74.255::s3 /cygdrive/d/wwwroots  
            // d/wwwroots   为存数据位置d盘wwwroots文件夹
            //s3 为客户端上配置的config文件同步名称。
            //Administrator@10.232.74.255 为服务端的用户名和Ip地址
echo.
echo 数据同步完成，恭喜Joo!
echo.
