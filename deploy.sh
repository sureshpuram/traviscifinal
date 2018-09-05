#!/bin/bash
set -e && \
cd ./dist && \
remote_repo=${https://github.com/sureshpuram/traviscifinal:-`git config remote.origin.url`} && \
remote_branch="gh-pages" && \
git init && \
git config user.name "sureshpuram" && \
git config user.email "puram.suresh@gmail.com" && \
git add . && \
git commit -m'build' && \
git push --force --quiet traviscifinal:gh-pages > /dev/null 2>&1 && \
rm -fr .git && \
cd ../
