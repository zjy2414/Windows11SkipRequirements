:: Windouws 11 TPM 2.0 �� CPU ��װ����ȥ���ű���(ע��TPM�汾����Ϊ1.2)
:: ���ߣ�����dnf
:: gitee: https://gitee.com/zjy2414
:: github: https://github.com/zjy2414
@echo off

echo Hi��������ĵ�����Ϊ TPM 2.0��������Ҫ TPM 1.2���� CPU �İ�װ���ƶ��޷���������ô����ű���������������װ��顣
echo.
echo  --------------------------------------------------------------------------------------------------
echo    ����������
echo.
echo               ΢��ٷ����������ڲ����� Windows 11 ���ϵͳҪ����豸�ϰ�װWindows 11��    
echo.
echo        �·�ȷ�Ϻ�������ѳ��ϲ�֪Ϥ��ط��ա�                                                                     
echo.
echo  --------------------------------------------------------------------------------------------------
echo.
echo �·�ȷ��ǰ��ȷ�����ڹ���Աģʽ�����д˽ű�
echo.
set/p option=ȷ��������װ���?(yes/no):

if "%option%"=="yes" goto start
if "%option%"=="y" goto start
if "%option%"=="no" goto end
if "%option%"=="n" goto end

goto end

:start
REG ADD HKEY_LOCAL_MACHINE\SYSTEM\Setup\MoSetup /v AllowUpgradesWithUnsupportedTPMOrCPU /t REG_DWORD /d 1

:end
