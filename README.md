# A Boring Little Trick on Ubuntu

This script can be used to fool your friends who use Ubuntu on their computer.

## Description

The script is all about change the system default font with a given font named SixSixSix, which turn everything(well, almost everything) to character '6'. When run the script with parameter 'set', your desktop(Unity for example) could become this:

![Oops!](666.png)

So, for your "personal safety", make sure that ***use a terminal emulator which do not use the system default font run the script!!!***

## Usage

```
chmod +x ./zuoyao.sh 
./zuoyao.sh set # set the trick
./zuoyao.sh reset # reset it
```

## Others

If you didn't change your terminal emulator's default font before run the script, well, try to log in other terminal by press `Ctrl+Alt+F1`, and reset it.
