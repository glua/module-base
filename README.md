# Garry's Mod Binary Module Base
This project allows 3rd party binary modules to be easily built by end-users, developers and build servers.

Examples of usage can be found at: https://github.com/glua/gm_stringtable, (TODO: List more here).

## Dependencies
| Windows | Linux | OSX |
| ------- | ----- | --- |
| [Git](https://git-scm.com/download/win) | [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) | [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) |
| [Visual Studio](https://www.visualstudio.com/en-us/downloads/download-visual-studio-vs.aspx)* | GNU Make | TODO |
| [Premake5](https://github.com/glua/module-base/wiki/Installing-Premake5) | [Premake5](https://github.com/glua/module-base/wiki/Installing-Premake5) | [Premake5](https://github.com/glua/module-base/wiki/Installing-Premake5) |
<sub>*Visual Studio must be of version 2013 or 2015.</sub>

## Compiling a Module
__Simple Method (I just want my module!)__

1. Clone the repository of the module you wish to compile.
2. Execute build-windows or build-linux, depending on what operating system you are running.
3. Retrieve your compiled module from the "bin" directory.

```bash
git clone https://github.com/glua/module-base
cd module-base
build-windows
```

__Complex Method (I am developing a module!)__

1. Clone the repository of the module you wish to compile.
2. Ensure any submodule-dependencies have been cloned.
3. Generate a project solution using premake
4. Open your solution in your chosen IDE
5. Develop

```bash
git clone https://github.com/glua/module-base
cd module-base
git submodule update --init --recursive
premake5 vs2015
(open up the project in visual studio!)
```
