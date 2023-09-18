#!/bin/bash
#References:
#https://www.baeldung.com/linux/loop-over-find-bad-practice
#https://www.golinuxcloud.com/bash-split-string-into-array-linux/
#https://linuxize.com/post/bash-increment-decrement-variable/

out=$(find ~/venvs ~/engineering  -name "site-packages" -print0 | xargs -0 -n 1 ~/.oh-my-zsh/custom/venv/venv_list_helper.zsh)
all_venvs=(`echo $out | tr ',' ' '`)

echo "Choose a python virtual environment to activate:"

i=1
for venv in $all_venvs
do
    echo "$i" "$venv"
    let "i+=1"
done

read venv_selection
cmd=". ${all_venvs[$venv_selection]}/bin/activate"
eval "$cmd"