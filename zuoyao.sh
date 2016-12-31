#!/bin/bash
List=`gsettings list-recursively |sort -u|grep "font.*'.*'" | sed "s/'.*'//g"`
# echo "$HOME"
FontDir="$HOME/.fonts"
# echo "$FontDir"
if [ $# -ne 1 ]; then
    echo "Usage: $0 [set|reset]"
elif [ $1 == "set" ]; then
    if [ ! -d "$FontDir" ]; then
        mkdir "$FontDir"
    fi
    if [ ! -f "$FontDir/SixSixSix.ttf" ]; then
        cp SixSixSix "$FontDir/SixSixSix.ttf"
        fc-cache "$FontDir"
        # fc-cache -f
        # echo "update cache OK"
    fi
    echo "$List" | while read a; do echo $a | sed "s/$/ 'ZuoYao 12'/g " |sed "s/^/gsettings set /g"| bash; done
elif [ $1 == "reset" ]; then
    echo "$List" | while read a; do echo $a | sed 's/^/gsettings reset /g'| bash ; done
elif [ $1 == "debug" ]; then
    echo "list:"
    echo "$List"
    echo "ResetCMD:"
    echo "$List" | while read a; do echo $a | sed 's/^/gsettings reset /g' ; done
    echo "SetCMD:"
    echo "$List" | while read a; do echo $a | sed "s/$/ 'ZuoYao 12'/g " |sed "s/^/gsettings set /g"; done
fi
