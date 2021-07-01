---
layout: default
---
# ALIAS command

The **ALIAS** command defines or lists aliases commands. This command can be 
used to provide a logic close to macros provided by the **Doskey** command.

## Synopsis

    ALIAS [/f] [/l] [name[=command-block]]

Defines an alias that is internal to [Picobat](pBat), or lists aliases

* **name** : Name of the alias to be created.

* **command** : The commands to be executed whenever **name** command is 
  invoked. During the execution of the alias, **$\*** is replaced by all the 
  paremeters of the alias. The nine first parameters can also be accessed 
  individually using **$1** through **$9** symbols. Note that these symbols 
  are expanded before any delayed expansion is done on the command line. 

* **/f** : Creates an alias even if **name** corresponds to an already defined 
  alias or internal command.

* **/l** : Lists all current aliases or aliases matching **name**. 

**ALIAS** allows redefining an internal command. This functionnality is 
interesting if you have to hook some internal command.

**ALIAS** does not check that the aliases it creates are not self-calling 
\(eg. no circular declariation\). If **ALIAS** is used to create such aliases, 
these aliases will lead to infinite loop when used.

By default, There is only one **alias** defined by [pBat](pbat). It links 
[HELP](help) to [HLP](hlp).

## Making macros

The **ALIAS** command can be used to make very simple or complex macros. to 
define a command, you can use for example:

    ALIAS my_command=echo some stuff

This will print "some stuff" every time **my\_command** is invoked.

As explained above, parameters can be retrieved individually using the **$1** 
to **$9** symbols, and all of them can be using **$\***. As such it is 
possible to make some elaborate macros in order to perform specific action. 
For example the following macro changes the [%PROMPT%](prompt) variable before 
and after calling **cmd.exe** to fix bugs caused by **Picobat** incompatible 
prompt options:

    alias cmd=(set prompt=$P$G^
    cmd.exe $*^
    set prompt=%PROMPT%)

The block is mandatory in order to have the lines executed as separated lines. 
The new lines must be escaped using **^** escape character or a syntax error 
will be yielded. On every call to **cmd**, the prompt variable is modified, 
then **cmd.exe** is run and finally the prompt variable is reset.

Both [IF](if) and [FOR](for) commands can be used in aliases so it is possible 
to run loops inside aliases, for example, the following macro can be used to 
compute the length of a string:

    alias strlen=set $2=0 ^& for %%P in (4096 2048 1024 512 256 128 64 32 16 8 4 2 1) do (^
        if "!$1:~%%P,1!" NEQ "" (^
            set /a "$2+=%%P" ^
            set "$1=^!$1:~%%P^!" ^
        ) ^
    )

This macro uses **$1** and **$2** as parameter. The first parameter is a 
variable containing a string and the second is a counter to retrieve the 
length of the string. It can be used like so:

    set string=my string example
    strlen string counter
    echo string "%string%" is %counter% characters long

## Compatibility

Does not exist in **cmd.exe**. This is the closest equivalent of 
**Doskey.exe** though alias also works in batch scripts.

## See also

[Command list](commands) 

