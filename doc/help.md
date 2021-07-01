---
layout: default
---
# HELP command

Print a list of **pBat** commands accompaigned by a short description of these 
commands. It is also possible to print manual pages.

By default, the **HELP** command is a alias pointing to [HLP command](hlp)

## Synopsis

    HELP [command]

Prints either a list of commands or a manual page:

* **command** : The command name associated to the manual page to print.

By default, **HELP** is overriden by an [DEF](def) command in 
[pBat\_Auto.bat](pbat\_auto) that associate **HELP** with [HLP](hlp). This 
alias can be removed by removing the following line from your 
**pBat\_Auto.bat**:

    DEF /b HELP=hlp.bat $*

## Compatibility

Compatible with **cmd.exe**.

Available since version **0.0.0.42**.

## See also

[HLP command](hlp), [ECHO command](echo), [SET command](set), [Command 
scripts](scripts) 

