#!/bin/sh

git config --global user.email "adrian.adermon@gmail.com"
git config --global user.name "adrianadermon"

git checkout master

git add . CV.pdf
git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"

git push https://${GH_OAUTH_TOKEN}@github.com/${GH_USER_NAME}/${GH_PROJECT_NAME}.git 2>&1

