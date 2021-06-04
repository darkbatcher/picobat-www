---
layout: default
---
# pBat Initialization (pBat_Auto.bat) #

[pBat](pbat) is initialized through the execution of a batch script named 
**pBat\_Auto.bat**. This file sets some variables and calls user defined 
scripts.

## Synopsis ##

    %PBAT_PATH%/pBat_Auto.bat

This file is not meant to be edited directly, since it calls user defined 
scripts. It can be nonetheless useful to modify it to fit some special 
requirements. If you modify it, be careful not to do anything wrong with it as 
it can eventually affect the behaviour of some scripts.

Usually, the file **pBat\_Auto.bat** sets [pBat global variables](pbatvar) 
that are not dynamic.

Finally **pBat\_Auto.bat** also call two user defined scripts :

* **%USERPROFILE%/.pbat/pBat\_Auto.bat** : User startup file

* **%PBAT\_ETC%/pBat\_Auto.bat** : System wide startup file.

In both of these script, any [pBat command](commands) can be used safely.

Note that since the first multi-threaded release **218.1**, the execution of 
**pBat\_Auto.bat** has changed a lot. The script gets executed upon either:

* **pBat** start-up, that is when a new interpreter is launched without 
  parents.

* or **pBat** is **explicitly** called from a script or from the prompt. This 
  means **pBat\_Auto.bat** does not get executed any more upon 
  [pipe](spec/condop) call or [FOR](for) command. 

## Compatibility ##

Not compatible with **cmd.exe**, the initialization mechanisms differ.

Available since **0.7**.

## See Also ##

[Environment variables](spec/var), [Specifications Index](spec/index) 

