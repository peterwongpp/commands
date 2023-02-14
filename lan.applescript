-- to buil the application:
-- 1. open this file with Script Editor
-- 2. File > Export
-- 3. File Format: Application
--    Uncheck all Options
--    Code Sign: Don't Code Sign

do shell script "networksetup -setnetworkserviceenabled Wi-Fi off"
do shell script "networksetup -setnetworkserviceenabled \"USB 10/100/1000 LAN\" on"
