---
layout: default
---
# SETLOCAL command

The **SETLOCAL** command allows setting local environment and changing 
[pBat](pbat) interpretors settings at runtime.

To revert modifications to environment after a **SETLOCAL** command, use the 
[ENDLOCAL](endlocal) command.

## Synopsis

    SETLOCAL [ENABLEDELAYEDEXPANSION | DISABLEDELAYEDEXPANSION] [CMDLYCORRECT | CMDLYINCORRECT]

Create a local environment so that changes to variables after the 
**SETLOCAL** command be discarded using the **ENDLOCAL** command. The option 
that can be specified allow enabling or disabling following modes :

* **ENABLEDELAYEDEXPANSION**, **DISABLEDELAYEDEXPANSION** : Enable or disable 
  [delayed expansion](spec/exp).

* **CMDLYCORRECT**, **CMDLYINCORRECT** : Enable or disable more compatibility 
  with **cmd.exe**.

When calling **SETLOCAL**, the [%ERRORLEVEL%](errorlevel) variable is left 
unmodified, except if an error occurs, then **%ERRORLEVEL%** will be set to 
**-1**.

## Compatibility

Fully compatible with **cmd.exe** since **218.2**. **ENABLEEXTENSION** and 
**DISABLEEXTENSIONS** are ignored by [pBat](pbat), every extensions is enabled 
at startup.

## See also

[ENDLOCAL command](endlocal), [SET Command](set), [Commands list](commands) 

