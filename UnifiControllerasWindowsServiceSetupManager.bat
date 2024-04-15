cls
@echo off
echo MD UCSMan - UniFi Network Application as Win. Service Manager V.1.4/2024-04-15
echo ------------------------------------------------------------------------------
echo                               UniFi and UBIQUITI are Ubiquiti Inc Brands
echo                               Batch Autor: Rolf Hahn     rolf.hahn@microdyn.ch
echo.
echo This procedure installs / removes UniFi Controller as Windows Service:
echo   We use the following commands to install the service:
echo     java -jar lib\ace.jar installsvc
echo     java -jar lib\ace.jar startsvc
echo   We use the following commands to remove the service:
echo     java -jar lib\ace.jar stopsvc
echo     java -jar lib\ace.jar uninstallsvc
echo.
echo  Requirements to successful use this script:
echo       - Windows 10+ (current Version) We have tested: 10.0.19045.9291
echo       - JAVA 17 Eclipse Temurin OpenJRE is neccesary from: adoptum.net
echo       - UniFi Network Application 8.1.113 for Windows is neccesary from
echo         www.ui.com/download/unifi
echo         Important: Set JAVA_HOME variable while installing java
echo       - Start this batch with local administrator privileges
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
 java.exe -jar lib\ace.jar installsvc
 java.exe -jar lib\ace.jar startsvc
 echo done.
 echo You can now navigate to:
 echo   - https://localhost:8443/manage                 - to manage the wifi network
 echo   - https://localhost:8443/manage/hotspot-manager - to manage your Guests
 echo.
goto ProgramEnd

:SubRemove
 echo.
 echo Controller as Service will be removed now... 
 cd "%userprofile%\ubiquiti unifi\"
 java.exe -jar lib\ace.jar stopsvc
 java.exe -jar lib\ace.jar uninstallsvc
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
