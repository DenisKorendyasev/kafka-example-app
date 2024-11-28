@echo off
for /f "delims=" %%a in ('ipconfig ^| findstr /R /C:"IPv4 Address"') do set NetworkIP=%%a
set NetworkIP=%NetworkIP:~39%
echo Network IP: %NetworkIP%
set DOCKERHOST=%NetworkIP%
docker-compose -f docker-compose.yml up