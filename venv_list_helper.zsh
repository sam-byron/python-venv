#!/bin/bash
#References:
#https://medium.com/@shigmas/path-manipulation-in-the-shell-6f02dee65098
#https://opensource.com/article/18/5/you-dont-know-bash-intro-bash-arrays

all_venvs=()
for dir in "$@"; do
	venv_root="${dir%*/*}"
	venv_root="${venv_root%*/*}"
	venv_root="${venv_root%*/*}"
	# echo $venv_root
	all_venvs+=( $venv_root )
done

echo ${all_venvs[@]}
