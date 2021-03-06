---
layout: default
---
# pBat command

**pBat** is a free, cross-platform command prompt used for batch scripts and 
command processing.

**pBat** is a free software, designed to be as compatible as possible with 
**cmd.exe** proprietary software from **Microsoft**.

## Synopsis

     PBAT [/A[:]attr] [/i input] [/o output] [file] [/ commande | /k command]

Run a command file or wait for an user input.

* **file** : Path of the batch script to be run.

* **/c command** : Run **command** and exit **pBat**.

* **/k command** : Run **command** and stay active.

* **/A\[:\]attr** : Some attributes to set **pBat** behaviour:

  * **v** : Enables [delayed expansion](spec/var).

  * **c** : Enables **CMDLYCORRECT** option from the [SETLOCAL](setlocal) 
    command. This forces **cmd.exe** compatible mode.

  * **e** : Disable current directory echoing.

  * **q** : Run pBat quietly \(ie. does not show the intro screen at 
    startup\).

* **/i input** : redirects standard input to file descriptor **input**.

* **/o output** : redirects standard output to file descriptor **output**.

## Compatibility

Compatible with any version of **pBat**. Incompatible with **cmd.exe**.

**pBat** is cross-platform so that it can be run either on **MS-WINDOWS** or 
**GNU/Linux**. Moreover, pBat should be easily portable to operating systems 
that support either **POSIX** \(and define **\_POSIX\_C\_SOURCE**\) or a 
**MS-WINDOWS** compatible API, including any POSIX-compatible function that is 
provided by it.

## License

**pBat** is a free software distributed under [GNU General Public 
License](http://www.gnu.org/licenses/gpl.html) terms. For more informations 
about free software's philosophy, see [Free Software 
Fundation's](http://www.fsf.org) website.

## Author

**pBat** have been written since 2010 by **Darkbatcher \(Romain Garbi\)**. It 
uses severals helpful free libraries from the [GNU operating 
system](http://www.gnu.org/), mostly 
[libmatheval](http://www.gnu.org/software/libmatheval/), 
[gettext](https://www.gnu.org/software/gettext/).

pBat uses a few open-source project. Theses project include GNU Iconv, GNU 
Gettext, GNU libmatheval, and linenoise. pBat also includes a few functions 
from **darkbox** by TSnake41.

## See Also

[ECHO Command](echo), [Commands list](commands) 

