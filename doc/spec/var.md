---
layout: default
---
# Environment variables

Environment variables are the most common way to deal with variables with 
[pBat](../pbat). They are usually defined by the operating system but 
**pBat** uses its own implementation. Any external binary executed from 
**pBat** inherits its environment.

## Use

Environment variables can be defined, deleted or modified using the [SET 
command](../set).

Environment variables can be included in command using [Variable 
expansion](exp).

## Default defined variables

Some environment variables are automatically defined by **pBat**.

Eight of them are native variables :

* [%PBAT\_OS%](../pbatvar) : OS type.

* [%PBAT\_PATH%](../pbatvar) : pBat binary path.

* [%PBAT\_VERSION%](../pbatvar) : pBat version.

* [%ERRORLEVEL%](../errorlevel) : Return value of last executed program.

* [%CD%](../cd) : Current directory.

* [%RANDOM%](../random) : A random number.

* [%DATE%](../time) : Date.

* [%TIME%](../time) : Time.

Some other variables are defined by the operating system or by 
[pBat\_Auto.bat](../pbatauto):

* **%PATH%** : pBat paths list variable.

* **%SYSTEMDRIVE%** : Disk root.

* **%SYSTEMROOT%** : Operating system folder path. 

* **%USERPROFILE%** : Current user folder path.

## Note

Variables names are case insensitive \(eg. **%ErrorLevel%** is equivalent to 
**%errorlevel%**\).

## See also

[Special variables ](xvar), [Variable expansion](exp), [Specifications 
index](index). 

