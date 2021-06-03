---
layout: default
---
# LOCALE command #

The **LOCALE** command tells [pBat](pbat) the path to load translation files. 
**pBat** uses **.mo** files, generated using GNU gettext though it uses its 
own internals to read translation files.

## Synopsis ##

    LOCALE path

Tries to load translation messages from **path** using the current language of 
the OS. At startup, **pBat** searches for translation files in 
**%PBAT\_PATH%/share/locale/**, but the **LOCALE** enables translations files 
to be loaded from anywhere on the disk.

If custom paths for translation files are used, this command can be used to 
set up the proper configuration in [pBat\_Auto.bat](pbatauto) which is 
executed every time a **pBat** process is started.

## Compatibility ##

Specific to pBat.

## See also ##

[Commands list](commands) 

