#How to use the Rsync Tool
you kan rsync the date width many server computer. please read the doc file.

##The rsync.bat run the want to have data PC.
```HTML
@echo off
echo.
echo ��ʼͬ�����ݣ�Joo ���Ե�...
echo.
cd C:\Program Files (x86)\cwRsync\bin
rsync -vzrtopg --port=873 --progress --delete Administrator@10.232.74.255::s3 /cygdrive/d/wwwroots  
            // d/wwwroots   Ϊ������λ��d��wwwroots�ļ���
            //s3 Ϊ�ͻ��������õ�config�ļ�ͬ�����ơ�
            //Administrator@10.232.74.255 Ϊ����˵��û�����Ip��ַ
echo.
echo ����ͬ����ɣ���ϲJoo!
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
path = /cygdrive/d/wwwroot    //����Դ����Ҫ�����������ͬ����������������    
read only = false
transfer logging = yes
lock file = rsyncd.lock
```