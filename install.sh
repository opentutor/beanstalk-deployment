#!/usr/bin/env bash

# script to make your site-specific repo
# a fork-like clone of the latest release of aws-beanstalk-app

# NOTE: this will do a hard reset to upstream/main
# so DO NOT run on a local clone 
# where you have uncommitted changes

UPSTREAM=https://github.com/opentutor/aws-beanstalk-app.git
git remote add upstream $UPSTREAM
git lfs install --force --skip-smudge
git fetch upstream
git reset --hard upstream/main
bash ./version switch --latest
