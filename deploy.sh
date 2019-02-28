#!/usr/bin/env bash

git fetch
git pull
gitbook install
gitbook build
rm -fr /home/wwwroot/_book
cp -R _book /home/wwwroot/
cd /home/wwwroot
chown -R www _book
chgrp -R www _book

