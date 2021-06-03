---
layout: default
---
# %PBAT_VERSION%, %PBAT_OS%, %PBAT_OS_TYPE%, %PBAT_PATH%, %PBAT_SHARE%, %PBAT_ETC%, %PBAT_IS_SCRIPT% variables #

The **%PBAT\_VERSION%** variable expands to the current version of 
[pBat](pbat).

The **%PBAT\_OS%** variable expands to the name of the current **OS** running 
[pBat](pbat).

The **%PBAT\_OS\_TYPE%** variable expands to the type of the current **OS** 
running [pBat](pbat).

The **%PBAT\_PATH%** variables expands to the path to [pBat](pbat) directory.

The **%PBAT\_IS\_SCRIPT%** variable is used to detect whether the execution 
flow comes from a script or from the prompt.

**%PBAT\_SHARE%** and **%PBAT\_ETC%** expands to the locations of various 
[pBat](pbat) files.

## Synopsis ##

    %PBAT_VER%

Contain [pBat](pbat) version number.

    %PBAT_OS%

Contains the OS name on which **pBat** is runnig. This variable does not give 
any information on OS version though. The possible value are:

* **WINDOWS**

* **GNU/Linux**

* **NetBSD**

* **OpenBSD**

* **DragonFlyBSD** 

* If none of these operating system is found by **pBat**, then 
  **%PBAT\_OS\_TYPE%** will contain the host triplet for which pBat has been 
  compiled.

This variable is interesting to execute specific code for any of these 
platforms. In most cases, the variable **%PBAT\_OS\_TYPE%** is sufficient.

    %PBAT_PATH%

**%PBAT\_PATH%** contains the path to the [pBat](pbat) executable. This path 
is dinamically generated, so that the path will be correct even from non 
conventionnal paths, this enables making portable version on removable media.

    %PBAT_OS_TYPE%

Contains the type of operating system on which pBat is running. It can have 
two values:

* **\*NIX** : For Unix-based operating systems.

* **WINDOWS** : For windows based operating systems.

        %PBAT_IS_SCRIPT%

Expands to **false** if [pBat](pbat) has been launched in interactive mode 
\(that is, with no script to execute\) or **true** else. This value is useful 
inside configuration scripts such as [pBat\_Auto.bat](pbatauto). The value of 
**%PBAT\_IS\_SCRIPT%** is inherited when a script is [CALL](call)ed, however, 
the value is overwritten in any other case.

    %PBAT_SHARE%

Contains the path to the folder where pBat static data is stored.

    %PBAT_ETC%

Contains the path to the folder where pBat configuration files are stored.

## Compatibility ##

Uncompatible with **cmd.exe**, these variable are not defined.

Availiable since version **0.7**.

## See also ##

[Environment variables](spec/var), [Specifications index](spec/index) 

