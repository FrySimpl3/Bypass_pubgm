@echo off
:: BatchGotAdmin
::-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"="
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
::--------------------------------------

::ENTER YOUR CODE BELOW:
title Kill gameLoop
taskkill /F /IM adb.exe
@echo off
taskkill /F /IM adb1.exe
@echo off
taskkill /F /IM adb2.exe
cls
taskkill /F /IM AndroidProcess.exe
taskkill /F /IM ProjectTitan.exe
taskkill /IM "Synaptics.exe" /F
taskkill /f /im dnf.exe
taskkill /f /im adb.exe
cls
taskkill /f /im tensafe_1.exe
taskkill /f /im tensafe_2.exe
taskkill /f /im tencentdl.exe
taskkill /f /im conime.exe
taskkill /f /im QQDL.EXE
cls
taskkill /f /im qqlogin.exe
taskkill /f /im dnfchina.exe
taskkill /f /im dnfchinatest.exe
 8f
taskkill /f /im txplatform.exe
taskkill /f /im aow_exe.exe
taskkill /F /IM Auxillary.exe
cls
taskkill /F /IM TP3Helper.exe
taskkill /F /IM tp3helper.dat
TaskKill /F /IM androidemulator.exe
TaskKill /F /IM androidemulatorEn.exe
TaskKill /F /IM androidemulatorEx.exe
TaskKill /F /IM aow_exe.exe
TaskKill /F /IM syzs_dl_svr.exe
cls
TaskKill /F /IM QMEmulatorService.exe
TaskKill /F /IM RuntimeBroker.exe
taskkill /F /im adb.exe
taskkill /F /im GameLoader.exe
taskkill /F /im TBSWebRenderer.exe
taskkill /F /im AppMarket.exe
cls
taskkill /F /im AndroidEmulator.exe
net stop QMEmulatorService
net stop aow_drv
net stop bc_003008OU5R3B9NUU_05.db
 8f
del C:\Users\Morena\AppData\Roaming\Tencent\MobileGamePC\AppMarket3\bc_003008OU5R3B9NUU_05.db
del C:\aow_drv.log
del /s /f /q C:\WINDOWS\Prefetch
del /s /f /q %temp%\*.*
Del /S /F /Q %Windir%\Temp
cls
Del /S /F /Q %temp%
del /s /f /q C:\ProgramData\Tencent
del /s /f /q C:\Users%USERNAME%\AppData\Local\Tencent
del /s /f /q C:\Users%USERNAME%\AppData\Roaming\Tencent
net stop Tensafe
Del /s /f /q "C:\Program Files (x86)\SmartGaGa\ProjectTitan\androidfs_7.1.2\system\00000000"
Del /s /f /q "C:\Program Files (x86)\SmartGaGa\ProjectTitan\androidfs_7.1.2\root\00000000"
cls
del "D:\Setup\TxGameAssistant\AOW_Rootfs_100\0\367"
del "D:\Setup\TxGameAssistant\AOW_Rootfs_100\0\367.ini"
del "D:\Setup\TxGameAssistant\AOW_Rootfs_100\0\30"
del "D:\Program Files\TxGameAssistant\AOW_Rootfs_100\0\367"
del "D:\Program Files\TxGameAssistant\AOW_Rootfs_100\0\367.ini"
cls
del "D:\Program Files\TxGameAssistant\AOW_Rootfs_100\0\30"
del "E:\Program Files\TxGameAssistant\AOW_Rootfs_100\0\367"
del "E:\Program Files\TxGameAssistant\AOW_Rootfs_100\0\367.ini"
del "E:\Program Files\TxGameAssistant\AOW_Rootfs_100\0\30
Echo Done
cls
title Kill Done
