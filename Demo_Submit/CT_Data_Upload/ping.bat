@echo off
set ip = 10.202.0.9
set lip=10.202.0.9
Ping.exe -n 1 %ip% >> status.txt
Ping.exe -n 1 %lip% >> status.txt
