#!/bin/bash

pow () {
	echo "$(($1**$2))"
}

shortest () {
read -r -a array <<< "$@"
local min=${#array[i]}
for ((i=0;i<${#array[@]};i++)); do
	if [[ ${#array[i]} -lt $min  ]]; then
		min=${#array[i]}
	fi
done

for ((i=0;i<${#array[@]};i++)); do
	if [[ ${#array[i]} -eq $min  ]]; then
		echo "${array[i]}"
	fi
done
}

print_log () {
	echo "[$(date +%Y-%m-%d) $(date +%H:%M)] $@"
}
