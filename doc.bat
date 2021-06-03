@echo off
SETLOCAL enabledelayedexpansion

SET mandir=%PBAT_PATH%/share/pbat/hlp/en_US
set webdocdir=%~dp0/doc

echo mandir = %mandir%
echo webdocdir = %webdocdir%
pause

if not exist %webdocdir% mkdir %webdocdir%

for /f "tokens=*" %%a in ('cd %mandir%
dir /b /s /a:D') do if not exist %webdocdir%/%%a mkdir %webdocdir%/%%a
pause

for /f "tokens=*" %%a in ('cd %mandir%
dir /b /s /a:-D') do (
    echo processing %%a
    tea /e:utf-8 /o:md %mandir%/%%a %webdocdir%/%%a
)
pause

echo ----------------

for /f "tokens=*" %%a in ('dir /b /s /a:-D %webdocdir%/*.tea') do (
    echo %%~a ^>^> %%~dpna.md
    (echo ---
     echo layout: default
     echo ---
     type "%%~a" ) > "%%~dpna.md"
)

del /s /q %webdocdir%/*.tea
