# CornFlake

CornFlake is a small, interpreted programming language, written entirely in a Swift command line app. The language is inspired by the idea of a finite turing machine, where the number of cells is relatively small, and calculations exists with interactions between the slots. The interpreter can run on any Unix system.

##Installation

Download a zip version of the repo, and run the `CornFlake` executable under the `dist` folder.

##Usage

CornFlake uses a series of commands that can be written as a stream, seperated by spaces. These interact with the 3 slot array that powers the language.

####`close`:

The close command exits the program. It must be used as a singular command, no other commands can be present in the same line with it.

####`>`:

Moves the pointer to the right by one value. If the value is at the end of the array, at slot 3, it will move it back to slot 1. You can use repeated instances of this command to move the pointer more, such as `> > >`.

####`<`:

Moves the pointer to the left by one value. Will move back to the last slot if the pointer is currently at the first slot when this is used.

##Example Usage:

Here are some sample sessions, illustrating the different commands that can be used with the interpreter

```
CF> > + > + > +
CF> - - - -
CF> r
-3 1 1
CF> p
-3
CF> ++
fatal error: Can't form Range with end < start
```

Here, in this session, a `++` is used with a negative number. This cannot be done, because the natural sum of a number can't be computed with negative numbers in `CornFlake`. Here is a proper session showing the proper usage.

```
CF> + + +
CF> &
Unknown Command
CF> r
3 0 0
CF> ++
CF> r
6 0 0
CF> +> > +>
CF> r
6 6 6
CF> ++
CF> ++
CF> r
6 231 6
```

In this session, the `++` command is used succesfully, because it creates an internal swift range from 1 to a positive number, and doesn't incorporate negative numbers. Also here, the `+>` operators are used to pass a value from one position to another slot, by addition. This works for both the left and right direction.