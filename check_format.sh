#!/bin/bash

repository_path="/home/anna/Рабочий стол/git-practice"

for file in $(git diff --cached --name-only --diff-filter=ACMRTUXB -- "$repository_path"/*.txt); do
    if grep -q '!' "$file"; then
        echo "Файл $file соответствует формату"
    else
        echo "Файл $file не соответствует формату: отсутствует восклицательный знак"
        exit 1
    fi
done
