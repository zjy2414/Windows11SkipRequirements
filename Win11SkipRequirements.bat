:: Windouws 11 TPM 2.0 与 CPU 安装限制去除脚本。(注：TPM版本至少为1.2)
:: 作者：东南dnf
:: gitee: https://gitee.com/zjy2414
:: github: https://github.com/zjy2414
@echo off

echo Hi，如果您的电脑因为 TPM 2.0（至少需要 TPM 1.2）和 CPU 的安装限制而无法升级，那么这个脚本将帮助你跳过安装检查。
echo.
echo  --------------------------------------------------------------------------------------------------
echo    免责声明：
echo.
echo               微软官方并不建议在不符合 Windows 11 最低系统要求的设备上安装Windows 11，    
echo.
echo        下方确认后代表您已承认并知悉相关风险。                                                                     
echo.
echo  --------------------------------------------------------------------------------------------------
echo.
echo 下方确认前请确保您在管理员模式下运行此脚本
echo.
set/p option=确认跳过安装检查?(yes/no):

if "%option%"=="yes" goto start
if "%option%"=="y" goto start
if "%option%"=="no" goto end
if "%option%"=="n" goto end

goto end

:start
REG ADD HKEY_LOCAL_MACHINE\SYSTEM\Setup\MoSetup /v AllowUpgradesWithUnsupportedTPMOrCPU /t REG_DWORD /d 1

:end
