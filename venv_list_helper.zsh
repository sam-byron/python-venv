#!/bin/bash
#References:
#https://medium.com/@shigmas/path-manipulation-in-the-shell-6f02dee65098
#https://opensource.com/article/18/5/you-dont-know-bash-intro-bash-arrays

dir=$@
venv_root="${dir%*/*}"
venv_root="${venv_root%*/*}"
venv_root="${venv_root%*/*}"
echo $venv_root
