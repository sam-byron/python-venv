#!/bin/bash
#References:
#https://www.baeldung.com/linux/loop-over-find-bad-practice
#https://www.golinuxcloud.com/bash-split-string-into-array-linux/
#https://linuxize.com/post/bash-increment-decrement-variable/

out=$(find ~  -name "site-packages" -print0 | xargs -0 -n 1 ./venv_list_helper.zsh)
echo "Choose a python virtual environment to activate:"
all_venvs=($out)

i=1
for venv in "${all_venvs[@]}"
do
    echo "$i" "$venv"
    let "i+=1"
done

