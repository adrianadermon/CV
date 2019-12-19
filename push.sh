#!/bin/sh

git config --global user.email "adrian.adermon@gmail.com"
git config --global user.name "adrianadermon"

git status

git checkout master

git status

git add . CV.pdf
git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"

git status

git push https://${GH_OAUTH_TOKEN}@github.com/${GH_USER_NAME}/${GH_PROJECT_NAME}.git 2>&1

