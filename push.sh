#!/bin/sh

git config --global user.email @GH_USER_NAME
git config --global user.name @GH_USER_EMAIL

git checkout master

git add . CV.pdf
git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"

git push https://${GH_OAUTH_TOKEN}@github.com/${GH_USER_NAME}/${GH_PROJECT_NAME}.git 2>&1

