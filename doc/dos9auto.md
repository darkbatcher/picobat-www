---
layout: default
---
# Picobat Initialization (Picobat_Auto.bat) #

[Picobat](dos9) is initialized through the execution of a batch script named 
**Picobat\_Auto.bat**. This file sets some variables and calls user defined 
scripts.

## Synopsis ##

    %DOS9_PATH%/Picobat_Auto.bat

This file is not meant to be edited directly, since it calls user defined 
scripts. It can be nonetheless useful to modify it to fit some special 
requirements. If you modify it, be careful not to do anything wrong with it as 
it can eventually affect the behaviour of some scripts.

Usually, the file **Picobat\_Auto.bat** sets [Picobat global variables](dos9var) 
that are not dynamic.

Finally **Picobat\_Auto.bat** also call two user defined scripts :

* **%USERPROFILE%/.dos9/Picobat\_Auto.bat** : User startup file

* **%DOS9\_ETC%/Picobat\_Auto.bat** : System wide startup file.

In both of these script, any [Picobat command](commands) can be used safely.

Note that since the first multi-threaded release **218.1**, the execution of 
**Picobat\_Auto.bat** has changed a lot. The script gets executed upon either:

* **Picobat** start-up, that is when a new interpreter is launched without 
  parents.

* or **Picobat** is **explicitly** called from a script or from the prompt. This 
  means **Picobat\_Auto.bat** does not get executed any more upon 
  [pipe](spec/condop) call or [FOR](for) command. 

## Compatibility ##

Not compatible with **cmd.exe**, the initialization mechanisms differ.

Available since **0.7**.

## See Also ##

[Environment variables](spec/var), [Specifications Index](spec/index) 

