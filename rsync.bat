@echo off
echo.
echo ��ʼͬ�����ݣ�Joo-studio.com ���Ե�...
echo.
cd C:\Program Files (x86)\cwRsync\bin
rsync -vzrtopg --port=873 --progress --delete Administrator@10.232.74.255::s3 /cygdrive/d/wwwroots  
            // d/wwwroots   Ϊ������λ��d��wwwroots�ļ���
            //s3 Ϊ�ͻ��������õ�config�ļ�ͬ�����ơ�
            //Administrator@10.232.74.255 Ϊ����˵��û�����Ip��ַ
echo.
echo ����ͬ����ɣ���ϲJoo!
echo.
