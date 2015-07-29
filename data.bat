@echo off
echo.
echo 开始同步数据，Joozo 请稍等...
echo.
cd C:\Program Files\cwRsync\bin
rsync -vzrtopg --port=873 --progress --delete administrator@192.168.1.119::t_www.siteserver.cn /cygdrive/f/sync
echo.
echo 数据同步完成，恭喜Joozo!
echo.