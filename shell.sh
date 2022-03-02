
#! /bin/bash

declare -A map
map["prac1"]="practise1"
map["prac2"]="practise2"

git init
git checkout -b DemoBranch
git add ex.txt
git commit -m "first commit"


for i in "${!map[@]}"
do
    git remote add $i git@github.com:GarinshaMaxi/${map[$i]}.git
    git push -u $i DemoBranch
done

