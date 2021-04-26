UCSMan - UniFi Controller as Windows Service Manager    Ver.: 1.2 / 2021-04-26
------------------------------------------------------------------------------
This procedure installs / removes UniFi Controller as Windows Service:

When starting this Batch you can do the following:

Press [i] - to install controller as service
Press [r] - to remove controller as service
Press [q] - to quit the script

The script does not accept any params. It works only interactive. 

  We use the following commands to install the service:
    java -jar lib\ace.jar installsvc
    java -jar lib\ace.jar startsvc

  We use the following commands to remove the service:
    java -jar lib\ace.jar stopsvc
    java -jar lib\ace.jar uninstallsvc

      Before you use this script make sure you have this prerequisites:
      - Windows 10 (current Version)
      - UniFi Network Controller=6.2.17+ f. Windows is installed.
        Source: https://dl.ui.com/unifi/6.2.17-ceb3ba714d/UniFi-installer.exe
      - Only JAVA 8.281 64Bit + is neccesary. Source: https://java.com/de/
------------------------------------------------------------------------------
Important:
----------
Please start this batch with a user that has local administrator privileges
under Windows. 
