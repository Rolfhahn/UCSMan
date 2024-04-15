UCSMan - UniFi Controller as Windows Service Manager    Ver.: 1.4 / 2024-04-15
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
      - UniFi Network Application 8.1.113 f. Windows is installed.
      - Only JAVA 17 Eclipse Temurin OpenJRE 64Bit is neccesary.
------------------------------------------------------------------------------
Important:
----------
Please start this batch with a user that has local administrator privileges
under Windows. 
