:: Script by TadaMacky

:main
@echo off
cls
color 5
echo ==================[Ziac Services]==================
echo Please Make Sure To Run As Administrator
echo Script By TadaMacky
echo Discord: dsc.gg/ziac
echo ====================================================
echo [1] Clean Update Cache
echo [2] Clean Temporary Files
echo [3] Clean Windows Log Files

SET /P choice=Enter 1 or 2 or 3 : 
IF /i "%choice%"=="1" GOTO cleanupdate
IF /i "%choice%"=="2" GOTO tempofiles
IF /i "%choice%"=="3" GOTO logfiles

:cleanupdate
cls
net stop wuauserv
net stop UsoSvc
rd /s /q C:\Windows\SoftwareDistribution
md C:\Windows\SoftwareDistribution
timeout /t 2
cls
color 2
echo Cleaned!
timeout /t 10
GOTO main

:tempofiles
cls
takeown /f "%temp%" /r /d y
RD /S /Q %temp%
MKDIR %temp%
takeown /f "%temp%" /r /d y
takeown /f "C:\Windows\Temp" /r /d y
RD /S /Q C:\Windows\Temp
MKDIR C:\Windows\Temp
takeown /f "C:\Windows\Temp" /r /d y
timeout /t 2
cls
color 2
echo Cleaned!
timeout /t 10
GOTO main

:logfiles
cls
cd C:/ & del *.log /a /s /q /f
timeout /t 2
cls
color 2
echo Cleaned!
timeout /t 10
GOTO main

:END