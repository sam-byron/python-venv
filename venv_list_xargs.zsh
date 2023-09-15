#!/bin/bash
#References:
#https://www.baeldung.com/linux/loop-over-find-bad-practice

all_venvs=$(find ~  -name "site-packages" -print0 | xargs -0 -n 1 ./venv_list_helper.zsh)
echo "Choose a python virtual environment to activate:"
echo $all_venvs
