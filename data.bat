@echo off
echo.
echo ��ʼͬ�����ݣ�Joozo ���Ե�...
echo.
cd C:\Program Files\cwRsync\bin
rsync -vzrtopg --port=873 --progress --delete administrator@192.168.1.119::t_www.siteserver.cn /cygdrive/f/sync
echo.
echo ����ͬ����ɣ���ϲJoozo!
echo.