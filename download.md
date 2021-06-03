---
title: Get Picobat
description: Get Picobat working on your computer
layout: default 
---

# Getting Picobat #

Do you want to give dos9 a try ? This page is definitely for you.
Please follow the instructions to get Picobat working on your favourite operating system
(Windows, Linux, or even BSD ...).

## Windows  ##

### The lazy men's method ###

The easiest and fastest way to get *Picobat* to run on your computer is definitely
downloading one of the bundles we kindly compiled for you. Picobat comes with a
variety of different flavours that you are likely to enjoy:

#### version 218.3 bundles ####

| Flavour | Description                                                               | x86           | x86_64        |
| ------- | ------------------------------------------------------------------------- | ------------- | ------------- |
| utf-8   | A slightly heavier version providing support for utf-8 in windows console | [download][3] | [download][4] |
| Vanilla | A simple, fast, version supporting only windows code pages				  | [download][1] | [download][2] |


  [1]: https://sourceforge.net/projects/dos9/files/dos9-218.3/x86-dos9-vanilla.exe/download
  [2]: https://sourceforge.net/projects/dos9/files/dos9-218.3/x86_64-dos9-vanilla.exe/download
  [3]: https://sourceforge.net/projects/dos9/files/dos9-218.3/x86-dos9-u8.exe/download
  [4]: https://sourceforge.net/projects/dos9/files/dos9-218.3/x86_64-dos9-u8.exe/download

Once the setup is downloaded, just run it to get a fresh *Picobat* install on your computer,
navigate through the setup and have some fun within seconds (no, really, this is quite
straightforward).

### The tough guys' method ##

If you are a *really tough* guy, and you want to customise your *Picobat* a little more,
you may want to build you own version of *Picobat*. However,
this is not quite as straightforward as the previous option, especially on Windows.

Before even trying to do so, you must have a couple of programs installed on your
computer (at least MinGW, a unix-like shell with standard tools, git, gmake, libintl,
and libiconv). Once you have done so you can fetch the latest stable release using:

````````````````````````
$ git clone https://git.code.sf.net/p/dos9/code dos9-code
$ cd dos9-code
````````````````````````

You can continue using the latest stable version in the `master` branch. Or if you're
not afraid of stumbling upon marvellous and terrifying, but yet not that frequent, bugs 
you can switch to latest development version using the `dev` branch:

````````````````````````
$ git checkout dev
````````````````````````

Once you have the source, you can start preparing the build using our build
configuration target:

````````````````````````
$ make config
````````````````````````

This script prepares the make suite before compiling Picobat, beware this command 
may take a little while to complete as Windows is quite slow. Note that if
some errors occurs, you may need to run it twice, sadly.

Now the build as been successfully prepared, you have basically two options:

- Either specifying some options to toggle in or out some specific features
  of Picobat. As of 218.2, Picobat provides 4 options that can be switched on and
  of using either `use-option` or `no-option` :

	- `libcu8` : Enables native support of utf-8 (disabled by default).
	- `nls` : Enables internationalization (enabled by default).
	- `console` : Enables visual console features (enabled by default).
	- `cmdlycorrect` : Disable Picobat extensions conflicting with cmd's
		batch dialect
    - `modules` : Enables modules support (enabled by default).
  
```````````````````````````
$ make use-option
```````````````````````````

- Or skip this part and just start compiling using :
  
``````````````````````````
$ make all bin
````````````````````````

If everything went OK, your freshly compiled binaries should be in
`bin/`. However, unless you have added MinGW libraries directories
to your `%PATH%` you are required to put the required libraries
in the `bin/` in order for the executable to run easily.

This means that sadly, no installation target is provided for windows
and you must use binaries directly from the `bin/` directory.  

Note that these steps are only valid for newer versions of Picobat.
If you build an older version (which is somehow highly unlikely),
please refer to the `BUILD.readme` of the Picobat package.

## GNU/Linux and *Nix ##

### Precompiled binary ###

One of the obvious problem with Linux based OSes is the enormous numbers of
different flavours. As there is a lot of package manager we cannot provide
packages for all distributions, yet the preferred method is building the source
on your machine.

Of course we do not provide any package for less widespread operating systems
such as BSD-based operating systems or android. If you want to have theses
working on your machine, you *definitely* need to compile it.
 
### Building Picobat ###

Picobat is quite easy to compile under *Nix as required tools are usually available
easily. Once you have them installed, build it as described above in the windows
section.

Note that an installation target might be provided using:

``````````````````````
$ make install
`````````````````````` 
