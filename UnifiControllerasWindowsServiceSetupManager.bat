cls
@echo off
echo UCSMan - UniFi Controller as Windows Service Manager    Ver.: 1.2 / 2021-04-26
echo ------------------------------------------------------------------------------
echo This procedure installs / removes UniFi Controller as Windows Service:
echo   We use the following commands to install the service:
echo     java -jar lib\ace.jar installsvc
echo     java -jar lib\ace.jar startsvc
echo   We use the following commands to remove the service:
echo     java -jar lib\ace.jar stopsvc
echo     java -jar lib\ace.jar uninstallsvc
echo.
echo                                    UniFi and UBIQUITI are Ubiquiti Inc Brands
echo                                    Copyright of this Batch: Rolf Hahn
echo                                                         rolf.hahn@bluewin.ch
echo.
echo       Before you use this script make sure you have this prerequisites:
echo       - Windows 10 (current Version)
echo       - UniFi Network Controller=6.2.17+ f. Wind. 
echo         from: https://dl.ui.com/unifi/6.2.17-ceb3ba714d/UniFi-installer.exe
echo       - Only JAVA 8.281 64Bit + is neccesary. From: https://java.com/de/
echo ------------------------------------------------------------------------------
echo Important:
echo Please start this batch with a user that has local administrator privileges.
echo.
echo You can stop this script by pressing [CTRL-X] or [q] then [ENTER]
echo.
:ProgramStart
echo Please select Batch-Mode: 
set /p id=[i] install controller as service [r] remove controller as service [q] quit:

if %id%==i goto SubInstall
if %id%==r goto SubRemove
if %id%==q goto ProgramQuit
goto ProgramStart

:SubInstall
 echo.
 echo Controller as Service will be installed now... 
 cd "%userprofile%\ubiquiti unifi\"
 java -jar lib\ace.jar installsvc
 java -jar lib\ace.jar startsvc
 echo done
 echo.
goto ProgramEnd

:SubRemove
 echo.
 echo Controller as Service will be removed now... 
 cd "%userprofile%\ubiquiti unifi\"
 java -jar lib\ace.jar stopsvc
 java -jar lib\ace.jar uninstallsvc
 echo done
 echo.
goto ProgramEnd

:ProgramQuit
 echo.
 echo You have aborted this program. 

:ProgramEnd
 echo.
 echo END
 echo.
pause
