---
layout: default
---
# SET command

The **SET** command can display, set, or remove environment variables that can 
be later retrieved through [variable expansion](spec/exp).

## Synopsis - Simple set

    SET variable[=[content]]

Assign **content** to variable **variable**. If **content** is not specified, 
the the variable **variable** is removed from the environment.

If neither the equal sign nor **content** are specified, **SET** will list 
variables which name begin with **variable** and their content.

The way **SET** deals with quotes and spaces is a bit special and inherited 
from cmd's **SET** behaviour:

* if **variable** is followed by trailing spaces before the equal sign, theses 
  spaces will be removed;

* However if spaces or blanks follow the equal sign, they will be kept.

* Quotation marks on the right-hand-side of the assignment will not be 
  affected unless there is also a quotation mark preceding **variable**, in 
  which case, **content** will be trimmed at the last occurrence of a 
  quotation mark.

## Synopsis - Arithmetic evaluation

    SET /a variable=expression

Computes the value of the arithmetical expression **expression** and assign 
its value to variable **variable**. This command behaviour depends on mode set 
through [SETLOCAL](setlocal) command \(parameter **ENABLEFLOATS**\).

To get extended help about **arithmetical expressions**, please see the 
dedicated manual page for [SET /a command](seta).

## Synopsis - Prompting inputs

    SET /p variable=question

Prompts **question**, And waits for an input from user and assign it to 
**variable**.

Note that thank to **pBat** method of handling pipes, **SET /p** can be used 
to store the output of a command in a variable \(here **output**\) by using 
the following method:

    command | SET /p output=

## See also

[Command list](commands), [ECHO command](echo), [PAUSE command](pause), [SET 
/a command](seta).

