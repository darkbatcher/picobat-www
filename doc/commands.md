---
layout: default
---
# Index of commands

This is an index containing all the name of [pBat](pbat) internal and external 
commands, along with global variable and some miscelaneous topics. The command 
tagged with **\[int\]** are internal, and those tagged with **\[ext\]** are 
external.

An internal command is a command which is directly intergrated on 
[pBat](pbat), so that it does not need any additional binaries to work. These 
commands are the faster and the most compatible.

An external command is a command which needs an additionnal binaries. These 
commands provide more flexibility to batch programs.

The specifications can be found in [specifications index](spec/index).

To get started using Picobat, see the [quick starting guide](readme).

## User-interface commands

* [BREAK](break) **\[int\]** : Enables/disables CTRL-C handling.

* [COLOR](color) **\[int\]** : Changes the console screen color.

* [CLS](cls) **\[int\]** : Clears the console screen.

* [ECHO](echo) **\[int\]** : Displays text in the console.

* [HELP](help) **\[int\]** : Shows Picobat internal help\|HELP messages 
  \(provided for compatibility, alias of **HLP** when possible\).

* [HLP](hlp) **\[int\]** : Shows Picobat full help. 

* [PAUSE](pause) **\[int\]** : Makes a pause in a batch script

* [PROMPT](prompt) **\[int\]** : Changes pBat command prompt.

* [PECHO](pecho) **\[int\]** : Displays a text formatted for **PROMPT**

* [TIMEOUT](timeout) **\[int\]** : Introduces a delay in a batch script.

* [TITLE](title) **\[int\]** : Changes console title.

## Scripting commands

* [DEF](def) **\[int\]** : Defines a procedure or an alias.

* [CALL](call) **\[int\]** : Calls a external script or a routine, within the 
  current command context.

* [ENDLOCAL](endlocal) **\[int\]** : Reverts changes to local environment 
  after [SETLOCAL](setlocal) call.

* [EXIT](exit) **\[int\]** : Exits [pBat](pbat). 

* [FOR](for) **\[int\]** : Loops through items a script.

* [GOTO](goto) **\[int\]** : Jumps to a label in a script.

* [IF](if) **\[int\]** : Executes conditionnaly depending on test success.

* [PBAT](pbat) **\[int\]** : The main Picobat executable. Interprets batch 
  scripts.

* [SET](set) **\[int\]** : Modifies an environment variable. Either through a 
  string litteral, a mathematical expression or an user input.

* [SHIFT](shift) **\[int\]** : Changes position of command-line arguments in 
  batch files.

* [START](start) **\[int\]** : Runs a command.

* [SETLOCAL](setlocal) **\[int\]** : Creates local environment and changes 
  [pBat](pbat) mode.

* [REM](rem) **\[int\]** : Introduces a comment.

## File commands

* [CD, CHDIR](cd) **\[int\]** : Changes current directory.

* [COPY](copy) **\[int\]** : Copies files.

* [DIR](dir) **\[int\]** : Browses subdirectories.

* [DEL, ERASE](del) **\[int\]** : Deletes files.

* [DUMP](dump) **\[int\]** : Dumps hexadecimal content of a file.

* [FIND](find) **\[int\]** : Finds strings in files.

* [MD, MKDIR](md) **\[int\]** : Creates directory.

* [MORE](more) **\[int\]** : Displays files screen by screen.

* [MOVE](move) **\[int\]** : Moves files.

* [PUSHD](pushd) **\[int\]** : Changes current directory and push the previous 
  on the directory stack.

* [POPD](popd) **\[int\]** : Pulls a directory on the directory stack to 
  define the current directory.

* [RD, RMDIR](rd) **\[int\]** : Deletes directory.

* [RENAME, REN](ren) **\[int\]** : Renames files.

* [TEA](tea) **\[ext\]** : Fast and simple text preprocessor.

* [TYPE](type) **\[int\]** : Types files.

* [VER](type) **\[int\]** : Prints current OS version.

* [WC](wc) **\[int\]** : Displays file counts.

* [XARGS](xargs) **\[int\]** : Runs a command taking argument on standard 
  input. 

## Modules commands

* [BATBOX](batbox) **\[int\]** : A module implementation of the well known 
  **BATBOX** graphics tool.

* [MOD](mod) **\[int\]** : Loads a module from a file.

## Picobat-defined variables

* [%ERRORLEVEL%](errorlevel) : Stores the return status of the preceeding 
  command.

* [Picobat-defined variable](pbatvar) : A list of all variable defined by 
  Picobat.

* [%RANDOM%](random) : A variable used to generate random integral values.

* [%TIME% and %DATE%](time) : Variables for dealing with date and time.

## Miscellanious topics

* [LICENSES](license) : About the license applying to Picobat.

* [pBat\_Auto.bat](pbatauto) : About Picobat initialisations script.

* [Picobat START script](pbatstartscript) : About scripts used on \*nices to 
  implement the **START** command. 

