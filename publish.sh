#!/usr/bin/env bash

git add .
git commit -m 'Update'
git push origin master

if [ $? -eq 0 ]; then
    echo '📖 Published!'
fi